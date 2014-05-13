#
# Cookbook Name:: ruby-install
# Recipe:: install
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
include_recipe 'ruby-install::default'

node['ruby-install']['rubies'].each do |rubie|
  ruby_install_ruby rubie do
    install_dir node['ruby-install']['install_dir']
    user node['ruby-install']['user']
    group node['ruby-install']['group']
    gems node['ruby-install']['gems']
  end
end
