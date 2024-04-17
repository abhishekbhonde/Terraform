resource "aws_s3_bucket" "new_aws_s3_bucket"{
        bucket = "terra-practice-aws-s3-bucket"

        tags = {
            Name = "my bucket"
            Environment = "dev"
        }

}
