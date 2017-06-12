module "pwmanager" {
  source = "github.com/silinternational/idp-in-a-box//terraform/050-pw-manager"
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
  logentries_set_id = "${data.terraform_remote_state.cluster.logentries_set_id}"
  vpc_id = "${data.terraform_remote_state.cluster.vpc_id}"
  alb_https_listener_arn = "${data.terraform_remote_state.cluster.alb_https_listener_arn}"
  api_subdomain = "${var.api_subdomain}"
  cloudflare_domain = "${var.cloudflare_domain}"
  idp_name = "${var.idp_name}"
  alerts_email = "${var.alerts_email}"
  support_email = "${var.support_email}"
  from_email = "${var.from_email}"
  from_name = "${var.from_name}"
  logo_url = "${var.logo_url}"
  mailer_usefiles = "${var.mailer_usefiles}"
  mailer_host = "${var.mailer_host}"
  mailer_username = "${var.mailer_username}"
  mailer_password = "${var.mailer_password}"
  db_name = "${var.db_name}"
  mysql_host = "${data.terraform_remote_state.database.rds_address}"
  mysql_user = "${var.mysql_user}"
  mysql_pass = "${data.terraform_remote_state.database.db_pwmanager_pass}"
  recaptcha_key = "${var.recaptcha_key}"
  recaptcha_secret = "${var.recaptcha_secret}"
  docker_image = "${data.terraform_remote_state.ecr.ecr_repo_pwapi}"
  ui_subdomain = "${var.ui_subdomain}"
  id_broker_access_token = "${data.terraform_remote_state.broker.access_token_pwmanager}"
  id_broker_base_uri = "https://${data.terraform_remote_state.broker.hostname}"
  ecs_cluster_id = "${data.terraform_remote_state.core.ecs_cluster_id}"
  ecsServiceRole_arn = "${data.terraform_remote_state.core.ecsServiceRole_arn}"
  alb_dns_name = "${data.terraform_remote_state.cluster.alb_dns_name}"
  wildcard_cert_arn = "${data.terraform_remote_state.cluster.wildcard_cert_arn}"
  cd_user_username = "${data.terraform_remote_state.core.cduser_username}"
}