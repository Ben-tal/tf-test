resource "local_file" "foo" {
  content  = "test"
  filename = "${path.module}/test_module.json"
}

