provider "google" {
  project = var.project_id
  region  = var.region
}

# Enable the Datastore API in the GCP project
resource "google_project_service" "datastore" {
  project = var.project_id
  service = "datastore.googleapis.com"
}

# Create the GCS bucket to store the index.yaml file
resource "google_storage_bucket" "datastore_bucket" {
  name     = "my-datastore-index-bucket"  # Ensure this name is globally unique
  location = "US"
}

# Upload the index.yaml file to the GCS bucket
resource "google_storage_bucket_object" "datastore_index_yaml" {
  bucket = google_storage_bucket.datastore_bucket.name
  name   = "index.yaml"  # Name of the object in GCS
  source = "index.yaml"  # Path to your local index.yaml file
}
