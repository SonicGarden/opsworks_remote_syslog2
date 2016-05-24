# デーモン停止時にpidファイルが削除されず、restartできない不具合対応
cookbook_file '/etc/init.d/remote_syslog' do
  source 'remote_syslog'
  mode 755
  owner 'root'
  group 'root'
  action :create
end
