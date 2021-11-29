FROM debian:stable-slim
RUN apt update \
  && apt install -y  curl unzip wget \ 
  && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  &&  unzip awscliv2.zip \
  &&  ./aws/install \
  && wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.31.0/terragrunt_linux_amd64 \
  && mv terragrunt_linux_amd64  "/usr/bin/terragrunt" \
  && chmod a+x "/usr/bin/terragrunt" \
  && curl https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_linux_amd64.zip -o "terraform_1.0.9_linux_amd64.zip" \
  && unzip "terraform_1.0.9_linux_amd64.zip" \
  &&  mv terraform /usr/bin/terraform \
  && chmod a+x  "/usr/bin/terraform"
