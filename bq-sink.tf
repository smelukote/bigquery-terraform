resource "google_bigquery_dataset" "dataset" {
        dataset_id                  = "example_dataset"
        friendly_name               = "test"
        description                 = "This is a test description"
        location                    = "US"

        labels = {
            env = "example"
        }
    }

resource "google_logging_project_sink" "log_sink" {
    name        = "my_log_sink"
    description = "some explaination on what this is"
    destination = "bigquery.googleapis.com/projects/${var.project}/datasets/${google_bigquery_dataset.dataset.dataset_id}"
    filter      = "resource.type = project AND resource.labels.project_id = explore-bigquery AND logName = projects/explore-biquery/logs/cloudaudit.googleapis.com%2Factivity OR projects/explore-biquery/logs/cloudaudit.googleapis.com%2Fdata_access"

    # Whether or not to create a unique identity associated with this sink.
    unique_writer_identity = true

    bigquery_options {
    # options associated with big query
    # Refer to the resource docs for more information on the options you can use
    use_partitioned_tables=true
  }
}