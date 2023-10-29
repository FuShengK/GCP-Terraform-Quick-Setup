resource "google_cloud_run_service" "default" {
  name     = "My-Docker-Image"
  location = "asia-east1"

  template {
    spec {
      containers {
        image = "gcr.io/My-Project/My-Docker-Image:latest"

        dynamic "env" {
          for_each = local.env_vars
          content {
            name  = env.key
            value = env.value
          }
        }

      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "public" {
  service  = google_cloud_run_service.default.name
  location = "asia-east1"
  role     = "roles/run.invoker"
  member   = "allUsers"
}