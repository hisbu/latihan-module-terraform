module "clasic_lb_webapp" {
  source = "../module/clb/"
  
  CLB_NAME                  = "tf-webapp-clb-2"
  CLB_AZ                    = ["ap-southeast-1a","ap-southeast-1b","ap-southeast-1c"]
  CLB_INSTANCE_PORT         = 80
  CLB_INSTANCE_PROTOCOL     = "http"
  CLB_LB_PORT               = 80
  CLB_LB_PROTOCOL           = "http"

  CLB_HEALTHY_THRESHOLD     = 2
  CLB_UNHEALTHY_THRESHOLD   = 2
  CLB_TIMEOUT               = 5
  CLB_TARGET                = "HTTP:80/"
  CLB_INTERVAL              = 10

  CLB_INSTACNE              = module.ec2_cluster.id
  CLB_CROSS_ZONE            = "true"
  CLB_IDLE_TIMEOUT          = 60
  CLB_CONN_DRAINING         = "true"
  CLB_CONN_DRAINING_TIMEOUT = 60

  CLB_NAME_TAG              = "tf_webapp_clb2"
}

output "clb_dns_name" {
  value = module.clasic_lb_webapp.clb_dns_name
}