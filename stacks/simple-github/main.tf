provider "github" {
  owner = "racheleantonio"
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "My even more awesome codebase"

  visibility = "public"
}
