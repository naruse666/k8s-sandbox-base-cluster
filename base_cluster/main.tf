# docker driver
resource "minikube_cluster" "base" {
    cluster_name = "${local.name}-base-cluster"
    driver = "docker"
    container_runtime = "docker"

    # cluster
    nodes = 1

    # cpu
    cpus = 2

    # memory
    memory = "2048m"

    # disk
    disk_size = "20g"

    force = false

    # addons
    addons = [
        "default-storageclass",
        "ingress",
        "storage-provisioner",
    ]
}
