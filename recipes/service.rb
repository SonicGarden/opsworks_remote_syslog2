service 'remote_syslog' do
  supports status: true, restart: true, reload: true
  action :nothing
end
