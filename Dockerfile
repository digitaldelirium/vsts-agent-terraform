FROM microsoft/vsts-agent:latest

RUN apt-get update && apt-get install curl wget unzip -y && apt-get upgrade -y
RUN wget https://releases.hashicorp.com/terraform/0.11.1/terraform_0.11.1_linux_amd64.zip && \
    unzip terraform_0.11.1_linux_amd64.zip

CMD [ "/bin/bash" ]
ENTRYPOINT [ "start.sh", "VSTS_ACCOUNT", "VSTS_TOKEN" ]