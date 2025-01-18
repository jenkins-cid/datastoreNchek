variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The GCP region for the resources"
  type        = string
  default     = "us-central1"
}

variable "env" {
  description = "Environment name (dev, qa, stg, prod)"
  type        = string
}

variable "index_yaml_path" {
  description = "Path to the index.yaml file for Datastore indexing"
  type        = string
}
