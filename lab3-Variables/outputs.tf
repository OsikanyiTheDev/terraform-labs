output "file_created" {
  value = local_file.file.filename
}

output "file_content" {
  value = local_file.file.content
}
