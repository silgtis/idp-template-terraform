module "ssp" {
  source = "github.com/silinternational/idp-in-a-box//terraform/060-simplesamlphp"
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
  logentries_set_id = "${data.terraform_remote_state.cluster.logentries_set_id}"
  vpc_id = "${data.terraform_remote_state.cluster.vpc_id}"
  alb_https_listener_arn = "${data.terraform_remote_state.cluster.alb_https_listener_arn}"
  subdomain = "${var.ssp_subdomain}"
  cloudflare_domain = "${var.cloudflare_domain}"
  docker_image = "${data.terraform_remote_state.ecr.ecr_repo_simplesamlphp}"
  forgot_password_url = "https://${data.terraform_remote_state.pwmanager.ui_hostname}/#/forgot"
  hub_mode = "${var.hub_mode}"
  id_broker_access_token = "${data.terraform_remote_state.broker.access_token_ssp}"
  id_broker_base_uri = "https://${data.terraform_remote_state.broker.hostname}"
  memcache_host1 = "${data.terraform_remote_state.elasticache.cache_nodes.0.address}"
  memcache_host2 = "${data.terraform_remote_state.elasticache.cache_nodes.1.address}"
  db_name = "${var.db_name}"
  mysql_host = "${data.terraform_remote_state.database.rds_address}"
  mysql_user = "${var.mysql_user}"
  mysql_pass = "${data.terraform_remote_state.database.db_ssp_pass}"
  recaptcha_key = "${var.recaptcha_key}"
  recaptcha_secret = "${var.recaptcha_secret}"
  ecs_cluster_id = "${data.terraform_remote_state.core.ecs_cluster_id}"
  ecsServiceRole_arn = "${data.terraform_remote_state.core.ecsServiceRole_arn}"
  alb_dns_name = "${data.terraform_remote_state.cluster.alb_dns_name}"
  idp_name = "${var.idp_name}"
}