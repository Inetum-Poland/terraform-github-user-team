terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_team_membership" "membership" {
  username = var.user.username
  team_id  = var.team.id
  role     = var.role
}
