install_config = node['remote_syslog2']['install']
bin_file = 'remote_syslog'

remote_file install_config['download_path'] do
  not_if "ls /usr/local/bin/#{bin_file}"
  source install_config['source_url']
end

package bin_file do
  action :install
  source install_config['source_url']
  not_if "rpm -qa | grep #{bin_file}"
end
