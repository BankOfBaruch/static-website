#!/bin/bash
# Update packages and install Nginx
apt-get update
apt-get install -y nginx

# Overwrite the default Nginx welcome page with our portfolio files
gsutil cp gs://[YOUR_BUCKET_NAME]/index.html /var/www/html/
gsutil cp gs://[YOUR_BUCKET_NAME]/style.css /var/www/html/
