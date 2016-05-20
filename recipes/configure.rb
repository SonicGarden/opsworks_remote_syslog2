template node['remote_syslog2']['config_file'] do
  source 'log_files.yml.erb'
  mode 0644
  owner 'root'
  group 'root'
end

# デーモン停止時にpidファイルが削除されず、restartできない不具合対応
cookbook_file '/etc/init.d/remote_syslog' do
  source 'remote_syslog'
  mode 755
  owner 'root'
  group 'root'
  action :create
end
