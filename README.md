# Apigee get_token Dockerfile

This repository provides a Dockerfile for building a Docker image for Apigee get_token CLI. Kindly note that this Dockerfile is not officially supported by Apigee.

## How to Build

1. Clone this git repository and switch to `apigee-get-token-dockerfile` directory:
   ```bash
   git clone https://github.com/imesh/apigee-get-token-dockerfile.git
   cd apigee-get-token-dockerfile
   ```

2. Build the Docker image by executing below command:
   ```bash
   docker build . -t apigee/get_token
   ```

   If everything goes well, you will see an output similar to following:
   ```
   Sending build context to Docker daemon   2.56kB
   Step 1/6 : FROM node
   ---> c31fbeb964cc
   Step 2/6 : WORKDIR /opt/apigee/
   ---> Using cache
   ---> fee4849d18bb
   Step 3/6 : RUN curl https://login.apigee.com/resources/scripts/sso-cli/ssocli-bundle.zip -o "ssocli-bundle.zip"
   ---> Using cache
   ---> 7b818ab52289
   Step 4/6 : RUN unzip ssocli-bundle.zip -d /opt/apigee/get_token
   ---> Using cache
   ---> 76d39968751c
   Step 5/6 : WORKDIR /opt/apigee/get_token
   ---> Using cache
   ---> 84862737c57e
   Step 6/6 : RUN /opt/apigee/get_token/install -b /usr/local/bin
   ---> Using cache
   ---> 5e8783b3808c
   Successfully built 5e8783b3808c
   Successfully tagged apigee/get_token:latest
   ```

## How to Run

Execute below command to set the `SSO_LOGIN_URL` and execute `get_token` command:

  ```bash
  docker run --env SSO_LOGIN_URL=https://login.apigee.com -it apigee/get_token get_token
  ```

Update `SSO_LOGIN_URL` value according to your SAML SSO login URL:
https://docs.apigee.com/api-platform/system-administration/auth-tools#install

## License
```
Apache 2.0
```