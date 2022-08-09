variable "dream_env" {
  description = "dream app environment variables to set"
  type        = map(string)
  default     = {}
}

variable "dream_project_dir" {
  description = "root directory of the project sources"
  type        = string
}

variable "build_tool" {
  description = "build tool to use"
  type        = string
  default     = "gradle"

  validation {
    condition     = contains(["gradle", "java"], var.build_tool)
    error_message = "Allowed values for build_tool are \"gradle\", \"java\"."
  }
}
