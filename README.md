chef_cpanm Cookbook
===================
use cpanminus to install cpan packages according to https://metacpan.org/pod/App%3a%3acpanminus#Downloading-the-standalone-executable
currently just test on centos 6.4.

Requirements
------------

Attributes
----------
#### cpanm::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cpanm']['install_path']</tt></td>
    <td>String</td>
    <td>where to install cpanm</td>
    <td><tt>/usr/bin</tt></td>
  </tr>
  <tr>
    <td><tt>['cpanm']['install_from']</tt></td>
    <td>String</td>
    <td>install cpanm with "file" or "source", if you choose install from source, cpanm will install by node['cpanm']['install_source_url']</td>
    <td><tt>file</tt></td>
  </tr>
  <tr>
    <td><tt>['cpanm']['install_source_url']</tt></td>
    <td>String</td>
    <td>url for binary source, please refer to https://metacpan.org/pod/App%3a%3acpanminus#Downloading-the-standalone-executable</td>
    <td><tt>http://xrl.us/cpanm</tt></td>
  </tr>

</table>

Usage
-----

use definition to install your cpan, eg:

```
include_recipe "cpanm"
cpanm_package do
  packages ["Net::SSLeay"]
end

```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
