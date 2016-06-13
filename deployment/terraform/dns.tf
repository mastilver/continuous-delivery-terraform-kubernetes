# configure dnsimple
provider "dnsimple" {
    token = "${var.dns_simple_token}"
    email = "th.sileghem@gmail.com"
}

# create dns record
resource "dnsimple_record" "cd" {
    domain = "mastilver.com"
    name = "cd"
    value = "${var.node_service_ip}"
    type = "A"
    ttl = 60
}
