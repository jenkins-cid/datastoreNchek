resource "google_project_service" "datastore" {
  project = var.project_id
  service = "datastore.googleapis.com"
}

resource "google_storage_bucket" "datastore_bucket" {
  name     = "${var.env}-datastore-index-bucket"
  location = var.region
}

resource "google_storage_bucket_object" "datastore_index_yaml" {
  bucket = google_storage_bucket.datastore_bucket.name
  name   = "index.yaml"
  source = var.index_yaml_path
}
