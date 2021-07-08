FROM hashicorp/terraform:1.0.1 as terraform

FROM ubuntu:focal
COPY --from=terraform /bin/terraform /bin/terraform
