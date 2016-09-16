name 'wordpress'
maintainer 'opex software'
maintainer_email 'hiteshri ramteke'
license 'All rights reserved'
description 'Installs/Configures wordpress'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'my_database'
depends 'database', '~> 5.1.2'
depends 'mysql2_chef_gem'
