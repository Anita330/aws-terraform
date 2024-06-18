#cat graph.dot | dot -Tsvg > graph.svg
variable "sg_ports" {

  type        = list(number)
  default     = [8200, 8100, 9200, 9300]
  description = "list of ingress port"
}