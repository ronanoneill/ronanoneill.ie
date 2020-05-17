#!/bin/bash

echo "deploying to S3"
synccmd="aws s3 sync . s3://ronanoneill.ie --exclude '.git/*' --delete"
eval $synccmd


echo "invalidating Cloudfront"
invalidationcmd="aws cloudfront create-invalidation --distribution-id EGM130SS0UDZ5 --paths \"/*\""
eval $invalidationcmd
