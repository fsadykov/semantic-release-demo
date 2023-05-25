output "hello-world" {
  value       = data.external.this.result.hello
}

data "external" "this" {
  program = ["bash", "-c", "./scripts/script.sh"]

  query = {
    hello = "world"
  }
}