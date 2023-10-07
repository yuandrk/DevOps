
### Configure static website hosting on an S3 with the CLI 

``mybucket=NOTES_BUCKET_NAME``

- Update the public-access-block permission on the bucket 

```aws s3api put-public-access-block --bucket $mybucket --public-access-block-configuration "BlockPublicPolicy=false,RestrictPublicBuckets=false"```

- Run command below to sync in the folder with your bucket 

```aws s3 sync ~/environment/labRepo/html/. s3://$mybucket/```

- Run command below to enable S3 webhosting: 
```aws s3api put-bucket-website --bucket $mybucket --website-configuration file://~/environment/labRepo/website.json```

- This command to update the current place holder for your S3 bucket name 

```sed -i "s/\[BUCKET\]/$mybucket/g" ~/environment/labRepo/policy.json```

- Commnad to apply the bucket policy: 

```aws s3api put-bucket-policy --bucket $mybucket --policy file://~/environment/labRepo/policy.json```

-  Review S3 website endpoint 

```printf "\nYou can now access the website at:\nhttp://$mybucket.s3-website-$region.amazonaws.com\n\n"```