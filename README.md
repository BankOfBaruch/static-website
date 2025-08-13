# GCP Static Website on Compute Engine

## Overview

This project demonstrates how to deploy a simple static website on a Google Compute Engine VM.

### Architecture

* **Compute Engine:** An `e2-micro` VM hosts the Nginx web server.
* **Cloud Storage:** Website assets (`index.html`, `style.css`) are stored in a GCS bucket.
* **Startup Script:** On boot, the VM runs a script that installs Nginx and copies the website files from the GCS bucket to the web server directory.
* **VPC Firewall Rule:** A rule is configured to allow HTTP traffic on port 80.

### How to Replicate

1.  Clone the repository.
2.  Create a GCS bucket and upload the `index.html` and `style.css` files.
3.  Update the bucket name in `startup-script.sh`.
4.  Run the `gcloud` commands provided in the documentation to create the firewall rule and VM instance.
