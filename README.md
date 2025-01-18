# Terraform Module for Provisioning GCP Datastore and Index Management

This Terraform module helps you set up a **Google Cloud Datastore** instance in **Cloud Datastore Compatibility Mode**, enabling the **Datastore API** for your GCP project and optimizing query performance by managing indexes.

## Features

- **Enable the Datastore API** for your GCP project.
- **Provision a GCS bucket** to store the `index.yaml` file, which defines the Datastore indexes.
- **Upload the `index.yaml` file** to the GCS bucket for Datastore index management.
- **Outputs** include useful information such as the GCS bucket name, object name, and URL.

## Prerequisites

Before using this module, ensure that you have the following:

- **Google Cloud Project**: Ensure that you have a Google Cloud project set up and ready to use.
- **Terraform**: You need to have Terraform installed on your machine. You can install it from the [official Terraform website](https://www.terraform.io/downloads.html).
- **Google Cloud SDK**: You will need to authenticate using `gcloud` or a service account JSON file. You can set this up by following the [Google Cloud authentication guide](https://cloud.google.com/docs/authentication/getting-started).

## Important Note

Currently, Terraform does not have a direct resource type to provision a **Google Cloud Datastore** instance in **Cloud Datastore Compatibility Mode** since Datastore instances are automatically created and managed by Google Cloud when you first interact with Datastore via an API or service. This means that a Datastore instance is typically provisioned implicitly when you use Datastore features in your project.

However, you can configure and manage **Cloud Datastore** optimally using Terraform in the following ways:

- **Enable Datastore API**: Ensure the Datastore API is enabled for your GCP project.
- **Configure Datastore Indexes**: Use `google_datastore_index` (for legacy Datastore indexes) or `google_storage_bucket` to upload a configuration file (`index.yaml`) to GCS, which Datastore uses for indexing.

## Usage

### Step 1: Clone the Repository

```bash
git clone https://github.com/<your-repo>/terraform-gcp-datastore.git
cd terraform-gcp-datastore
