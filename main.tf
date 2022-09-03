terraform {
  required_providers {
    dominos = {
      source = "MNThomson/dominos"
    }
  }
}

provider "dominos" {
  first_name    = var.customer_first_name
  last_name     = var.customer_last_name
  email_address = var.customer_email_address
  phone_number  = var.customer_phone_number

  credit_card = {
    number      = var.cc_number
    cvv         = var.cc_cvv_code
    date        = var.cc_exp_date
    postal_code = var.cc_zip_code
  }
}

data "dominos_address" "addr" {
  street      = var.addr_street
  city        = var.addr_city
  region      = var.addr_region
  postal_code = var.addr_postal_code
}

data "dominos_store" "store" {
  address_url_object = data.dominos_address.addr.url_object
}

data "dominos_menu_item" "item" {
  store_id     = data.dominos_store.store.store_id
  query_string = var.item_attributes
}

resource "dominos_order" "order" {
  api_object = data.dominos_address.addr.api_object
  item_codes = data.dominos_menu_item.item.matches[*].code
  store_id   = data.dominos_store.store.store_id
}
