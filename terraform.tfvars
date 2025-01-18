project_id      = "gcpcloud-448114"
region          = "us-central1"
name            = "my-datastore-instance"
kind_name       = "my-kind"

index_properties = [
  {
    name = "Index1"
    properties = [
      { name = "property1", direction = "ascending" },
      { name = "property2", direction = "descending" }
    ]
  },
  {
    name = "Index2"
    properties = [
      { name = "property3", direction = "ascending" },
      { name = "property4", direction = "ascending" }
    ]
  }
]
