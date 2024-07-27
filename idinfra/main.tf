# Bucket to store website

resource "google_storage_bucket" "website" {
  name = "id-website-by-kkid"
  location = "US"
}

# Make object public
# use gcp predefined providers(abject access control)
# name 'website' to give it to 'public_rule(terraform knows it has)'
resource "google_storage_object_access_control" "public_rule" {
  object = google_storage_bucket_object.static_idsite_src.name
  bucket = google_storage_bucket.website.name
  role = "READER"
  entity = "allUsers"
}

# upload the html file to the bucket
# storage object
resource "google_storage_bucket_object" "static_idsite_src" {
  name = "index.html"
  source = "../website/index.html"
  bucket = google_storage_bucket.website.name
}

# we can do extensions for above site ....like
# 1- Reserve a static external IP address
# 2- Get  the managed DNS Zone (from gcp provider)
#   - then add the IP to the DNS record
# 3 - Add the bucket as a CDN buckend
# 4 - URL Mapping
# 5 - then loadbalancer , http proxy
# 6 - then forwarding rule (ip protocal, port range, ssl cert etc)