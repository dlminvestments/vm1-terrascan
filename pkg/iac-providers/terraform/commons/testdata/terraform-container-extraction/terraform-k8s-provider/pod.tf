resource "kubernetes_pod" "test" {
  metadata {
    name = "terraform-example"
  }

  spec {
    container {
      image = "nginx:1.25.4"
      name  = "example"

      resources {
        limits = {
          cpu          = "0.5"
          memory       = "512Mi"
          "nvidia/gpu" = "1"
        }

        requests = {
          cpu          = "250m"
          memory       = "50Mi"
          "nvidia/gpu" = "1"
        }
      }
    }
  }
}
