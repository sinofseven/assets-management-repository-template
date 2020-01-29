SHELL = /usr/bin/env bash -xeuo pipefail

bucket_name="Please put your S3 Bucket Name"
prefix=""

upload:
	pipenv run aws s3 sync assets s3://$(bucket_name)/$(prefix) --exclude ".gitignore"

download:
	pipenv run aws s3 sync s3://$(bucket_name)/$(prefix) assets --exclude ".gitignore"

upload-with-delete:
	pipenv run aws s3 sync assets s3://$(bucket_name)/$(prefix) --exclude ".gitignore" --delete

download-with-delete:
	pipenv run aws s3 sync s3://$(bucket_name)/$(prefix) assets --exclude ".gitignore" --delete

.PHONY: \
	upload \
	download \
	upload-with-delete \
	download-with-delete