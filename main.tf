
provider "aws" {
  region = var.region
     access_key = "AKIASGEMLXALOJDTD2JZ"
  secret_key = "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"
}
/*provider "azurerm" {
  use_oidc = true
  features {}
    subscription_id      = "6c14d0e8-6b5f-41d2-b35e-d30fce722523"
    tenant_id            = "6a721ffe-fe18-4f67-87ee-ed57592be919"
     client_id       = "ab3b82ad-0675-4043-a81b-3f662fea8965"
      client_secret   = var.client_secret
    
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroupgg"
  location = "westus2"
}*/


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
