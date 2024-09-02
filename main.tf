resource "local_file" "my_pet" {
    filename = "/pets.txt"
    content = "My cat name is TOM"
    lifecycle {
      prevent_destroy = true
    }
}

resource "random_pet" "petname" {
  prefix = "MR"
  separator = "."
  length = "1"
}

