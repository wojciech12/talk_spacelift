provider "github" {
  owner = "wojciech11"
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "Spacelift configuration examples"

  visibility = "public"
}
