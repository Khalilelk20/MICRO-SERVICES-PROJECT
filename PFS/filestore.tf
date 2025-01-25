resource "google_filestore_instance" "nfs_instance" {
  name     = "nfs-instance" 
  location = "us-central1-a"  
  tier     = "BASIC_HDD"  

  file_shares {
    capacity_gb = 1024  
    name        = "nfs_share"  
  }

  networks {
    network = "default"  
    modes   = ["MODE_IPV4"]  
  }
}
