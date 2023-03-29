generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite"
    contents = <<EOF
provider "minikube" {
    kubernetes_version = "v1.26.1"
}
EOF
}

generate "version" {
    path = "version.tf"
    if_exists = "overwrite"
    contents = <<EOF
terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.2.3"
    }
  }
}
EOF
}
