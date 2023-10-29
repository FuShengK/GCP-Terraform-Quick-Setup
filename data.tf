locals {
  secret_names = ["My_Secret_1", "My_Secret_2", "My_Secret_3", "My_Secret_4", "My_Secret_5"]
}

data "google_secret_manager_secret_version" "secrets" {
  for_each = toset(local.secret_names)
  secret   = each.value
  version  = "latest"
}

locals {
  env_vars = {
    My_Secret_1 = data.google_secret_manager_secret_version.secrets["My_Secret_1"].secret_data
    My_Secret_2 = data.google_secret_manager_secret_version.secrets["My_Secret_2"].secret_data
    My_Secret_3 = data.google_secret_manager_secret_version.secrets["My_Secret_3"].secret_data
    My_Secret_4 = data.google_secret_manager_secret_version.secrets["My_Secret_4"].secret_data
    My_Secret_5 = data.google_secret_manager_secret_version.secrets["My_Secret_5"].secret_data
  }
}