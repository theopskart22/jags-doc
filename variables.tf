variable "prefix" {
  description = "The prefix for the resources created in the specified Azure Resource Group"
  default = "akspoc"
}

variable "location" {
  default     = "uksouth"
  description = "The location for the AKS deployment"
}

variable "CLIENT_ID" {
  description = "The Client ID (appId) for the Service Principal used for the AKS deployment"
  default = "226121aa-767a-4575-9f16-e3e629730a4e"
}

variable "CLIENT_SECRET" {
  description = "The Client Secret (password) for the Service Principal used for the AKS deployment"
  default = "07b7d238-11a6-498a-bde9-f60fc6951cf8"
}

variable "admin_username" {
  default     = "azureuser"
  description = "The username of the local administrator to be created on the Kubernetes cluster"
}

variable "agents_size" {
  default     = "Standard_F2"
  description = "The default virtual machine size for the Kubernetes agents"
}

variable "log_analytics_workspace_sku" {
  description = "The SKU (pricing level) of the Log Analytics workspace. For new subscriptions the SKU should be set to PerGB2018"
  default     = "PerGB2018"
}

variable "log_retention_in_days" {
  description = "The retention period for the logs in days"
  default     = 30
}

variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool"
  default     = 2
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to install"
  default     = "1.13.11"
}

variable "public_ssh_key" {
  description = "A custom ssh key to control access to the AKS cluster"
  default     = ""
}
