variable "vpc_cidr_block" {}
variable "private_subnet_cidr_blocks" {}
variable "public_subnet_cidr_blocks" {}

variable "AWS_SECRET_KEY" {
    default = "CXTL2IS3i+1IvIyir0qNVSIHnpVyGBcQTTr+QBng" 
}

variable "AWS_ACCESS_KEY" {
    default = "ASIA3ZFTKHXMZ2NWNZ5I" 
}

variable "AWS_SESSION_TOKEN" {
    default = "FwoGZXIvYXdzEO7//////////wEaDHoGUyz1P88Oyr59QiLAAXhNsvScvgYpp/a6L+gjRhmTGQCqNySYO6fbeINL6iHkUfQN19p4PUSMt6WacYUZSdyEB7McIHo+WxcNtDlRRaimRV0VpUl/0b26pdcT4jvs8ngMHqfdUPDbhOuucUitZPhih1c3NWa8OBVc4YYrTQ02/xztMnvOOCgnuoLUD+8lE3x0sg+R7vQVegpP2WEXblaBhf4mQ4vMLEJKBqt2FwHyx/OaU+8OZ3E548NfudwNG/yV0GDxPz65rB3CGOW57CjcybenBjItTVymT8ES9s5pEkfCPlZwIsvmzIDMRZJcJvqPl21pPtzlsk5YC+26zy1OU3b1" 
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}