provider "github" {
  owner = "racheleantonio"
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "This is the new description"

  visibility = "public"
}
