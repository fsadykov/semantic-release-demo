output "hello-world" {
  value       = "Hello World Value"
}

data "external" "this" {
  program = ["bash", "-c", "./scripts/script.sh"]

  query = {
    id = "abc"
  }
}