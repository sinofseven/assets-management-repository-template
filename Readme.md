# assets management repository template

## How-to-use
- Put your assets in `assets`
- Please Edit `Makefile`
- `make upload`, then your assets upload to S3 (by `aws s3 sync`)
- `make download`, then your assets download from S3 (by `aws s3 sync`)
- `make (upload|download)-with-delete`, `aws s3 sync --delete`

