/* 
  Refactored by AI recommendation: Implement Module Structure for Reusability
  Original code:
  resource "aws_instance" "example" { /* resource configuration */ }
  
  Refactored code:
*/
module "instance" { source = "./modules/aws_instance" }