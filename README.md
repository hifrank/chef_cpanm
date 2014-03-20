chef_cpanm Cookbook
===================
use cpanminus to install cpan packages.
currently just test on centos.

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
    <td><tt>['cpanm']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### cpanm::default
install cpanm from file.

e.g.
Just include `cpanm` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cpanm]"
  ]
}
```

#### cpanm::source
install cpanm from source.

e.g.
Just include `cpanm::source` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cpanm::source]"
  ]
}
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
