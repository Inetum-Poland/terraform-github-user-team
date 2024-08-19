output "out" {
  value = {
    membership = github_team_membership.membership
  }
  description = "Team membership object `github_team_membership`."
}
