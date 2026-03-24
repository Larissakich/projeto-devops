provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "site" {
  bucket = "devops-site-exemplo-123456"

  tags = {
    Name = "DevOps Project"
  }
}

resource "aws_s3_bucket_website_configuration" "site_config" {
  bucket = aws_s3_bucket.site.id

  index_document {
    suffix = "index.html"
  }
}