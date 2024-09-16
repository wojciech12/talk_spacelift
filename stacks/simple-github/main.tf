provider "github" {
  owner = "wojciech12"
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "App repo with OpenTofu"

  visibility = "public"
}
