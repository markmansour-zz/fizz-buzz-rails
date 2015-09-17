# fizz-buzz-rails
A toy application for testing out my new code pipeline

# Setup
## Create an S3 bucket to store assets in
$ aws s3 mb markmans-reinvent-demo-assets

## Set the CORS Configuration so that assets can be served from a different domain
Navigate to markmans-reinvent-demo-assets and under permissions add a CORS configuration

```
<?xml version="1.0" encoding="UTF-8"?>
<CORSConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
    <CORSRule>
        <AllowedOrigin>http://fizz-buzz-rails-prod.elasticbeanstalk.com</AllowedOrigin>
        <AllowedMethod>GET</AllowedMethod>
        <AllowedHeader>*</AllowedHeader>
    </CORSRule>
    <CORSRule>
        <AllowedOrigin>http://fizz-buzz-rails.elasticbeanstalk.com</AllowedOrigin>
        <AllowedMethod>GET</AllowedMethod>
        <AllowedHeader>*</AllowedHeader>
    </CORSRule>
</CORSConfiguration>
```

## Turn on static website hosting
specify a dummpy Index document