provider "github" {
  owner = "wojciech12"
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "My even more more awesome codebase"

  visibility = "public"
}
