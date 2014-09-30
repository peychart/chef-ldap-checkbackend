#
# Cookbook Name:: chef-checkbackend
# Attributes:: chef-checkbackend
#
default['chef-checkbackend']['referents'] = ['ldap2']
default['chef-checkbackend']['snmp_secLevel'] = 'authPriv'
default['chef-checkbackend']['snmp_user'] = 'username'
default['chef-checkbackend']['snmp_password'] = 'testpass'
default['chef-checkbackend']['snmp_extend'] = 'ldapContextCSN'

default['snmp']['snmpd']['trapd_opts'] = '-d -Lf /dev/null -u snmp -g snmp -I -smux -p /var/run/snmp.pid'
default['snmp']['extend_scripts'] = {'extend  ldapContextCSN  /opt/supervision/extend/check_ldapContextCSN'}

