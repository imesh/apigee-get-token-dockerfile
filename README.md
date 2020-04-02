# Apigee get_token Dockerfile

This repository provides a Dockerfile for building a Docker image for Apigee get_token CLI.

## How to Build

1. Clone this git repository:
   ```bash
   git clone https://github.com/imesh/apigee-get-token-dockerfile.git
   cd apigee-get-token-dockerfile
   ```

2. Build Docker image by executing below command:
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

Execute below Docker run command to execute get_token command:

```bash
docker run -it apigee/get_token get_token
```

If no issues found, you will see an output similar to following:
```
docker run -it apigee/get_token get_token
Enter username:
{user-email}
Enter the password for user '{user-email}'
Enter the six-digit code if '{user-email}' is MFA enabled or press ENTER:
{mfa-value}
{token-value}
```

## License
```
Apache 2.0
```