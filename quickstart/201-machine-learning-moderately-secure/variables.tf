variable "name" {
  type        = string
  description = "Name of the deployment"
}

variable "environment" {
  type        = string
  description = "Name of the environment"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "Location of the resources"
  default     = "East US"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "training_subnet_address_space" {
  type        = list(string)
  description = "Address space of the training subnet"
  default     = ["10.0.1.0/24"]
}

variable "aks_subnet_address_space" {
  type        = list(string)
  description = "Address space of the aks subnet"
  default     = ["10.0.2.0/23"]
}

variable "ml_subnet_address_space" {
  type        = list(string)
  description = "Address space of the ML workspace subnet"
  default     = ["10.0.0.0/24"]
}

variable "image_build_compute_name" {
  type        = string
  description = "Name of the compute cluster to be created and set to build docker images"
  default     = "image-builder"
}