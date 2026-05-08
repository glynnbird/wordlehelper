terraform {
  backend "s3" {
    bucket = "grb-terraform-state"
    key    = "wordle/terraform.tfstate"
    region = "eu-west-1"
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.19.1"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
