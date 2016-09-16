lamp-stack Cookbook
===================
Lamp-stack cookbook help you setup lamp stack.

Supportes OS
------------
- Ubuntu 14.04

Recipes
-------

Default
-------
include all required recipes for cookbook lamp-stack

Apache
------
This recipe install apache server and setup sites provided in attributes , if any

Database
--------
Setup and install mysql server. It also create database but not tables. It also create a separate user for database with just enough privileges.
e.g.
#### packages
- `toaster` - lamp-stack needs toaster to brown your bagel.

Attributes
----------

#### lamp-stack::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['lamp-stack']['sites']</tt></td>
    <td>string</td>
    <td>name of the site</td>
    <td><tt>example.com</tt></td>
  </tr>
</table>

Usage
-----
#### lamp-stack::default

Just include `lamp-stack` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[lamp-stack]"
  ]
}
```

