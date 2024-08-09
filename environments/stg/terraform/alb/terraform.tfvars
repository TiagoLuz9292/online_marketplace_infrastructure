alb_name           = "alb-stg"
name_prefix        = "stg"
certificate_arn    = ""
s3_bucket_name     = "your_s3_bucket_name_here"
aws_region         = "eu-north-1"
tags               = {
  Environment = "stg"
  Project     = "online_marketplace"
}
