variable "bucket_names" {
  type    = list(string)
  default = ["infrasity1", "infrasity2", "infrasity3"] # Replace with your desired bucket names
}

variable "sse_algorithm" {
   type    = string 
   default  = "AES256"
}

variable "days" {
    type = list 
    default = [30, 60, 365]

}

variable "storage_class" {
    type = list(string)
    default = ["STANDARD_IA", "GLACIER"]

}

variable "Environment" {
    type = string
    default = "Production"
}

