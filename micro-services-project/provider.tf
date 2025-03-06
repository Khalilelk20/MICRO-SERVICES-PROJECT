provider "google" {
  project = "pfs-khalil-jihen"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = file("/tmp/gcp-key.json")
}
