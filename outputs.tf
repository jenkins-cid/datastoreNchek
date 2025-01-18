output "gcs_bucket_name" {
  description = "The name of the GCS bucket where the Datastore index file is stored"
  value       = google_storage_bucket.datastore_bucket.name
}

output "gcs_object_name" {
  description = "The name of the object (index.yaml) stored in the GCS bucket"
  value       = google_storage_bucket_object.datastore_index_yaml.name
}

output "gcs_object_url" {
  description = "The URL of the uploaded index.yaml file in GCS"
  value       = "gs://${google_storage_bucket.datastore_bucket.name}/${google_storage_bucket_object.datastore_index_yaml.name}"
}
