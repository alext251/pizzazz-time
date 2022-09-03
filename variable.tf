variable "customer_first_name" {
  description = "Customer's first name"
}

variable "customer_last_name" {
  description = "Customer's last name"
}

variable "customer_email_address" {
  description = "Customer's e-mail address"
}

variable "customer_phone_number" {
  description = "Customer's phone number"
}

variable "cc_number" {
  description = "Credit card number: xxxx-xxxx-xxxx-xxxx"
}

variable "cc_cvv_code" {
  description = "Credit card ccv code"
}

variable "cc_exp_date" {
  description = "Credit card expiry date: MM/YY"
}

variable "cc_zip_code" {
  description = "Credit card 5-digit ZIP code"
}

variable "addr_street" {
  description = "Delivery address street info"
}

variable "addr_city" {
  description = "Delivery address city"
}

variable "addr_region" {
  description = "Delivery address region/state"
}

variable "addr_postal_code" {
  description = "Delivery address ZIP/postal code"
}

variable "item_attributes" {
  description = "Query string to filter pizza component options"
  default = ["2-Liter Diet Coke®"]
}