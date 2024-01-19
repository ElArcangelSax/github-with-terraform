# This is the root backend file for the backend to DRY

remote_state {
  backend = "gcs"
  config = {
    project  = "Newproject"
    location = "us"
    bucket   = "asax-storage-bucket"
    prefix   = "${basename(get_parent_terragrunt_dir())}/${path_relative_to_include()}"
  }
}