variable "github_repo" {
  description = "The only GitHub repo allowed to assume role"
  type = string
  default = "yoder-cloudsec/devsecops-pipeline"
}