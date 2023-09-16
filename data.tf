# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"     #to fetch the region from query aws.
}

output "azs"{
    value = data.aws_availability_zones.available.names
}