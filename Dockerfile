FROM microsoft/vsts-agent:latest

RUN apt-get update && apt-get install curl wget unzip -y && apt-get upgrade -y
RUN wget https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip && \
    unzip terraform_0.11.2_linux_amd64.zip -d /usr/bin

CMD [ "/bin/bash" ]
ENTRYPOINT [ "start.sh", "VSTS_ACCOUNT", "VSTS_TOKEN" ]
