resource "local_file" "pet" {
    filename = "/root/pets.txt"
    content = "Pets are awesome. Love them"
}