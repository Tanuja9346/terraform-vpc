locals {
    azs = slice(data.aws_availability_zones.available.names,0,2)  #index 0 and end index.
}  #we are dynamically fetching first 2 regions data from aws using datasource and storing into azs variable.