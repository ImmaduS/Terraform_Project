terraform {
  backend "s3" {
    bucket = "backend-b926-bucket-back"
    key = "backend/"
    region = "us-east-2"
    dynamodb_table = ""
  }
}
