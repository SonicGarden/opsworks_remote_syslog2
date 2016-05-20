default['remote_syslog2']['config'] = {
  files: [],
  destination: {
    host: 'logs.papertrailapp.com',
    port: 12345
  },
  exclude_patterns: []
}

# These attributes probably shouldn't be changed unless they specifically need to be
default['remote_syslog2']['install']['source_url'] = 'http://github.com/papertrail/remote_syslog2/releases/download/v0.18-beta1/remote_syslog2-0.18-1.x86_64.rpm'
default['remote_syslog2']['install']['download_path'] = '/tmp/remote_syslog2.x86_64.rpm'
default['remote_syslog2']['config_file'] = '/etc/log_files.yml'
