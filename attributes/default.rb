#
# Cookbook Name:: chef-checkbackend
# Attributes:: chef-checkbackend
#
default['chef-ldap-checkbackend']['referents'] = ['ldap2']
default['chef-ldap-checkbackend']['snmp_secLevel'] = 'authPriv'
default['chef-ldap-checkbackend']['snmp_user'] = 'username'
default['chef-ldap-checkbackend']['snmp_password'] = 'testpass'
default['chef-ldap-checkbackend']['snmp_extend'] = 'ldapContextCSN'

default['snmp']['snmpd']['trapd_opts'] = '-d -Lf /dev/null -u snmp -g snmp -I -smux -p /var/run/snmp.pid'
default['snmp']['extend_scripts'] = {'ldapContextCSN' => '/opt/supervision/extend/check_ldapContextCSN'}

