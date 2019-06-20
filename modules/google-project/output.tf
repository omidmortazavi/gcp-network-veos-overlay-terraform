output "pet_name_output" {
    value = "${random_pet.new_pet.id}"
}

output "proj_id_output" {
    value = "${google_project.project.project_id}"
}

