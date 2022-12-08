variable "gke_cluster_name" {
  default     = "test-cluster"
  description = "this variables descibes the... NAME of my cluster"
}
variable "region" {
  default = "us-central1"
  description = "sets the overall region in which the control plane will be hosted" 
}
variable "control-plane-version" {
  default = "1.22.13-gke.1000"
  description = "selects an older version of the control plane for compatibility reasons"
}
variable "instance-type" {
  default = "e2-medium"
  description = "selects an intermediate type machine as the standard for the node pool"
}
variable "test-cluster-network" {
  default = "default"
  description = "sets the default setting for the network of the test-cluster as 'default'"
}
variable "test-cluster-ip-cidr" {
  default = "10.15.0.0/20"
  description = "sets the ip cidr range to the following starndard standard '10.15.0.0/20'"
}
variable "test-cluster-location" {
  default = "us-central1-c"
  description = "sets the default zone location of the node pool to 'us-central1-c' "
}
