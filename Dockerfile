FROM hashicorp/terraform:1.0.1 as terraform

FROM ubuntu:focal
RUN apt-get update && apt-get install -y curl
COPY --from=terraform /bin/terraform /bin/terraform
