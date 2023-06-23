variable "bucket_names" {
  type    = list(string)
}

variable "sse_algorithm" {
   type    = string 
}

variable "days" {
    type = list 

}

variable "storage_class" {
    type = list(string)

}

variable "Environment" { 
    type = string
}

