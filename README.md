# chef-ldap-checkbackend-cookbook

 This chef cookbook installs the components which allow to control the update of all the slave databases in ldap clusters...

 Depends on: 'cookbook-snmp' && 'xinetd'.

## Supported Platforms

 Ubuntu/Debian

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-ldap-checkbackend']['referents']</tt></td>
    <td>Strings Array</td>
    <td>the servers name to compare</td>
    <td><tt>ldap2</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-ldap-checkbackend']['snmp_secLevel']</tt></td>
    <td>String</td>
    <td>the snmp secLevel</td>
    <td><tt>authPriv</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-ldap-checkbackend']['snmp_user']</tt></td>
    <td>String</td>
    <td>the snmp user</td>
    <td><tt>username</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-ldap-checkbackend']['snmp_password']</tt></td>
    <td>String</td>
    <td>the snmp password</td>
    <td><tt>testpass</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-ldap-checkbackend']['snmp_extend']</tt></td>
    <td>String</td>
    <td>the snmp extend</td>
    <td><tt>ldapContextCSN</tt></td>
  </tr>
</table>

 See: man snmpcmd

## Usage

### chef-ldap-check-backend::default

Include `chef-ldap-checkbackend` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-ldap-checkbackend::default]"
  ]
}
```

## License and Authors

Author:: PE, pf. (<peychart@mail.pf>)
