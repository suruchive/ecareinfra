provider "aws" {
	region = "us-east-1"
}

# terraform.exe init 
# to Download Provider plugin to communicate with Provider in our case "AWS"

resource "aws_s3_bucket" "bucket_for_backend"{
	bucket = "bucket-for-managing-terraform-state-files-by-suruchi"
	acl = "private"
	tags = {
		Name = "suruchi"
		Environment="dev"
	}
	versioning {
		enabled = true
	}
}

resource "aws_iam_role" "AWSServiceRoleForECS" {
  name = "AWSServiceRoleForECS"
  assume_role_policy = "{}"
}