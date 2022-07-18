resource "aws_s3_bucket" "state_file_bucket" {
    bucket = "talent-academy-nishasahu-lab-tfstates"

    tags = {
        Name = "talent-academy-nishasahu-lab-tfstates"
        Environment = "Lab"
    }

    Lifecycle {
        prevent_destroy = true
    }
}

resource "aws_s3_bucket-versioning" "version_my_bucket" {
    bucket = aws_s3_bucket.state_file_bucket.id   #resource type.name.id

    versioning_configuration {
        status = "Enabled"
    }
}