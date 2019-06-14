remote_file '/etc/yum.repos.d/nginx.repo' do
  owner 'root'
  group 'root'
  source 'files/etc/yum.repos.d/nginx.repo'
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:restart, :enable]
end
