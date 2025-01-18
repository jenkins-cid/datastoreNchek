module "datastore" {
  source          = "../../modules/datastore"
  project_id      = var.project_id
  region          = var.region
  env             = var.env
  index_yaml_path = var.index_yaml_path
}
