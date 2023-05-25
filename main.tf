output "hello-world" {
  value       = "Hello World Value"
}

data "external" "this" {
  program = ["bash", "-c", "./scripts/script.sh"]

  query = {
    # arbitrary map from strings to strings, passed
    # to the external program as the data query.
    id = "abc"
  }
}