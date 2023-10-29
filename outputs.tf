output "service_url" {
  description = "My URL"
  value       = google_cloud_run_service.default.status[0].url
}