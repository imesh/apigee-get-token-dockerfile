FROM node

WORKDIR /opt/apigee/
RUN curl https://login.apigee.com/resources/scripts/sso-cli/ssocli-bundle.zip -o "ssocli-bundle.zip"
RUN unzip ssocli-bundle.zip -d /opt/apigee/get_token

WORKDIR /opt/apigee/get_token
RUN /opt/apigee/get_token/install -b /usr/local/bin