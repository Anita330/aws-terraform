provider "aws" {
    region = "ap-south-1"
  
}
 resource "aws_s3_bucket" "terraform-s3-data" {

   bucket = "terraform-s3-data"
 }