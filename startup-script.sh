#!/bin/bash
# Update packages and install Nginx
apt-get update
apt-get install -y nginx

# Overwrite the default Nginx welcome page with our portfolio files
# Replace YOUR_BUCKET_NAME with the name of your bucket from Step 2
gsutil cp gs://portfolio-assets-banks-sandbox-project/index.html /var/www/html/
gsutil cp gs://portfolio-assets-banks-sandbox-project/style.css /var/www/html/