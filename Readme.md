### Setup

#### Third party setup

- [Google cloud engine](cloud.google.com)
    - create new project
    - Go to: https://console.cloud.google.com/apis/credentials
    - Download credentials by clicking on: `Service account key`
    - in a browser console, execute: `window.btoa('<file content>')` and store the result

- [AWS](aws.amazon.com)
    - Create new bucket called `terraform` from https://console.aws.amazon.com/s3/home
    - Create a new user from: https://console.aws.amazon.com/iam/home?region=us-east-1#users
    - Create a new access key and store it

- [DNSimple](dnsimple.com)
    - Buy a domain name
    - Go to https://dnsimple.com/user and store the `API v1 token`

- [CircleCi](circleci.com)
    - enable github repository
    - Open the project settings
    - Go to `AWS Permissions` and enter the credentials
    - Go to `Environment Variables` and set:
        - `ACCT_AUTH` as the encoded Google cloud credentials
        - `TF_VAR_dns_simple_token` as the DNSimple token


### Setup

- Update `circle.yml` environment variables to match your Google cloud project
- Update `deploment/kubernetes/node-server.origin.json` to use your Google cloud project url
- Update `deploment/terraform/cluster.tf` settings to match your Google cloud project
- Update `deploment/terraform/dns.tf` to your desire url

### Development

[run local cluster](http://kubernetes.io/docs/getting-started-guides/docker/)
