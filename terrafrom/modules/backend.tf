terraform {
  backend "s3" {
    bucket = "backend-b926-bucket-back"
    key = "backend/"
    region = ""
    dynamodb_table = ""
  }
}
