# Provider configuration
provider "random" {
  version = "~> 3.1"
}

# Define pet names
resource "random_pet" "pet" {
  length = 4
  separator = "-"
}

# Define strings
resource "random_string" "password" {
  length  = 16
  special = true
}

# Define integers
resource "random_integer" "number" {
  min = 1
  max = 100
}

# Output defined values
output "random_pets" {
  value = random_pet.pet.*.id
}

output "random_password" {
  value = random_string.password.result
}

output "random_number" {
  value = random_integer.number.result
}
