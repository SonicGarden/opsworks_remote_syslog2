template node['remote_syslog2']['install']['config_file'] do
  source 'log_files.yml.erb'
  mode 0644
  owner 'root'
  group 'root'
  notifies :restart, "service[remote_syslog]", :immediately
end

service 'remote_syslog' do
  supports status: true, restart: true, reload: true
  action :nothing
end
