# Provider configuration
provider "random" {
  version = "~> 3.1"
}

# Generate random pet names
resource "random_pet" "pet" {
  count = 5  # Change the count to generate more or fewer random pet names
}

# Generate random strings
resource "random_string" "password" {
  length  = 16
  special = true
}

# Generate random integers
resource "random_integer" "number" {
  min = 1
  max = 100
}

# Output random values
output "random_pets" {
  value = random_pet.pet.*.id
}

output "random_password" {
  value = random_string.password.result
}

output "random_number" {
  value = random_integer.number.result
}
