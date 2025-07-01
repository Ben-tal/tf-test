resource "local_file" "foo" {
  content  = "test"
  filename = "${path.module}/test_module.json"
}

resource "local_file" "fooax" {
  content  = "test"
  filename = "${path.module}/test_module.json"
}

module "test2" {
  source = "../test2"
}

