resource "google_compute_disk" "mysql_disk" {
  name  = "mysql-disk"
  size  = 1   
  type  = "pd-standard"  
  zone  = "us-central1-a" 
}

