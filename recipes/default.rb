#
# Cookbook Name:: ruby-install
# Recipe:: default
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
include_recipe 'ark::default'

ark 'ruby-install' do
  url "#{node['ruby-install']['git_url']}/#{node['ruby-install']['git_ref']}"
  version node['ruby-install']['git_ref']
  action :install_with_make
end
