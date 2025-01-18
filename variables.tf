variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region where the Datastore instance will be created"
  type        = string
}

variable "name" {
  description = "The name of the Datastore instance"
  type        = string
}

variable "kind_name" {
  description = "The name of the kind for the Datastore"
  type        = string
}

variable "index_properties" {
  description = "A list of index properties for the Datastore"
  type = list(object({
    name        = string
    properties  = list(object({
      name      = string
      direction = string
    }))
  }))
}
