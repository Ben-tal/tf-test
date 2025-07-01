data "http" "example" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}
data "http" "examples" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}
resource "local_file" "foo" {
  content  = data.http.example.id
  filename = "${path.module}/test.json"
}

resource "local_file" "foao" {
  content  = local_file.foo.content
  filename = "${path.module}/tester.json"
}


resource "local_file" "foaao" {
  content  = local_file.foo.content
  filename = "${path.module}/testaer.json"
}

module "test" {
  source = "./modules/test"
}
module "test2" {
  source = "./modules/test"
}