name             "opsworks_remote_syslog2"
maintainer       "interu"
maintainer_email "interu@sonicgarden.jp"
license          "Apache 2.0"
description      "Installs/Configures remote_syslog2"
version          "0.1"

recipe 'opsworks_remote_syslog2', 'Installs/Configures remote_syslog2'
recipe 'opsworks_remote_syslog2::configure', 'Generates config file for remote_syslog2'
recipe 'opsworks_remote_syslog2::install', 'Installs remote_syslog2'
recipe 'opsworks_remote_syslog2::service', ' Installs remote_syslog2 as an init.d service and starts/enables it'
