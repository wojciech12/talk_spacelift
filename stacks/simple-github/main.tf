variable "github_owner" {
  type = string
}
provider "github" {
  owner = var.github_owner
}

variable "repos" {
  description = "repos_to_be_created"
  type = list(object({
    name                = string
    description         = string
  }))
  default = [{"name" = "name1", "description" = "description1"}, {"name" = "name2", "description" = "description2"} ]
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "My new repository for Terraform"

  visibility = "public"
}

resource "github_repository" "repos" {
  for_each =  { for obj in var.repos : obj.description => obj }
  name        = each.value.name
  description = each.value.description
  visibility = "public"
}
