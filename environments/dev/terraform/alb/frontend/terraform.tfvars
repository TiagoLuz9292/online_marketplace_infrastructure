name_prefix        = "dev"
certificate_arn    = "arn:aws:acm:eu-north-1:024848457167:certificate/08a25d9e-fe74-4f9a-8994-12ce8aef2b20"
s3_bucket_name     = "online-marketplace-dev"
aws_region         = "eu-north-1"
alb_name           = "alb-frontend"

tags               = {
  Environment = "dev"
  Project     = "online_marketplace"
}
