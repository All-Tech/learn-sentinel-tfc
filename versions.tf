terraform {
 
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.26.0"
    }
  }

  required_version = ">= 0.15"
cloud {
    organization = "Camertechdev"
    workspaces {
      name = "learn-sentinel-tfc"
    }
  }
 /* backend "remote" {
     organization = "Camertechdev"

    workspaces {
      name = "learn-sentinel-tfc"
    }
  }*/

}
