
terraform {

  cloud {

    organization = "claud-lab-2022078677"

    workspaces {

      name = "cloud-lab"

    }

  }

  required_providers {

    random = {

      source  = "hashicorp/random"

      version = "~> 3.6"

    }

  }

}



resource "random_pet" "lab" {

  length = 2

}



output "pet_name" {

  value = random_pet.lab.id

}

