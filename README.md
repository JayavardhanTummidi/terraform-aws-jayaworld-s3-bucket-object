> **This module is useful to create S3 bucket object**

 **Example to upload object to S3 bucket**
 
  module "jayaworld-s3-bucket-object" {

  source  = "app.terraform.io/jaya-world/jayaworld-s3-bucket-object/aws"
  
  **insert required variables here**
  key = "Name of the object once it is in the bucket"

  bucket = "Name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified"

  source = "Path to a file that will be read and uploaded as raw bytes for the object content"

  **look at inputs section for more features and options**


  }