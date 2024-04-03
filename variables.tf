variable "user" {
  type        = any
  description = "The user to add the team to"
}

variable "team" {
  type        = any
  description = "The team to add the user to"
}

variable "role" {
  type        = string
  description = "The role of the user on the team"

  validation {
    condition     = contains(["member", "maintainer"], var.role)
    error_message = "Must be one of 'member' or 'maintainer'"
  }
}
