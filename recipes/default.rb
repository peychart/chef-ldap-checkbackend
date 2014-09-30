#
# Cookbook Name:: chef-ldap-check-backend
# Recipe:: default
#
# Copyright (C) 2014 PE, pf.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
include_recipe 'cookbook-snmp::default'

cookbook_file '/usr/local/bin/chk_backend' do
  source 'usr_local_bin_chk_backend.erb'
  owner root
  groupe root
  mode 0755
end

cookbook_file '/root/backend' do
  source 'root_backend'
  owner root
  groupe root
  mode 0755
end

cookbook_file '/opt/supervision/extend/check_ldapContextCSN' do
  source 'opt_supervision_extend_check_ldapContextCSN'
  owner root
  groupe root
  mode 0755
end

template '/usr/local/etc/chk_backend.sh' do
  source 'usr_local_etc_chk_backend.sh.erb'
  owner root
  groupe root
  mode 0755
  variables({
    :referents => node['ldap-checkbackend'][:referents]
    :snmp_secLevel => node['ldap-checkbackend'][:snmp_secLevel]
    :snmp_user => node['ldap-checkbackend'][:snmp_user]
    :snmp_password => node['ldap-checkbackend'][:snmp_password]
    :snmp_extend => node['ldap-checkbackend'][:snmp_extend]
  })
end

cookbook_file '/etc/xinetd.d/chk_backend' do
  source 'etc_xinetd.d_chk_backend'
  owner root
  groupe root
  mode 0644
  notifies :restart, 'xinetd', :immediately
end

service 'xinetd' do
  action [ :enable, :restart ]
end
