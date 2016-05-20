install_config = node['remote_syslog2']['install']
bin_file = 'remote_syslog'

## githubによってアクセス拒否されている可能性あるので
#remote_file install_config['download_path'] do
#  not_if "ls /usr/local/bin/#{bin_file}"
#  source install_config['source_url']
#  retries 2
#end

cookbook_file install_config['download_path'] do
  source 'remote_syslog2-0.18-1.x86_64.rpm'
  mode 755
  owner 'root'
  group 'root'
  action :create
end

package bin_file do
  action :install
  source install_config['source_url']
  not_if "rpm -qa | grep #{bin_file}"
end
