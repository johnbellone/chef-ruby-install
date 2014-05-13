name 'ruby-install'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'MIT'
description %Q(Installs postmodern's ruby-install and optionally Ruby versions.)
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version '0.2.0'

%w{debian ubuntu redhat centos mac_os_x}.each do |os|
  supports os
end

depends 'ark'
