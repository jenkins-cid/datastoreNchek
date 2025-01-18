output "gcs_bucket_name" {
  value = google_storage_bucket.datastore_bucket.name
}

output "gcs_object_name" {
  value = google_storage_bucket_object.datastore_index_yaml.name
}

output "gcs_object_url" {
  value = google_storage_bucket_object.datastore_index_yaml.self_link
}
