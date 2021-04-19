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





#####variables 

/*variable "firststring" {
	type=string
	default="suruchi"
}

output "firstoutput"{
	
	value=var.firststring
}

variable "mymap" {
	type=map
	default={
		"useast"="ämi1"
		"uswest"="ämi2"

	}
}

output "maptoutput"{
	
	value=var.mymap.useast
}

variable "mylist" {
	type=list
	default=["sg1","sg2","sg3"]
}

output "listoutput"{
	
	value=var.mylist
}

variable "mybool" {
	
	default=true
}

output "booloutput"{
	
	value=var.mybool
}

variable "myinputvar" {
	
	type=string
}

output "myoutputvar"{
	sensitive=true
	value=var.myinputvar
}
*/