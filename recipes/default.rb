#
# Cookbook Name:: cpanm
# Recipe:: default
#
# Copyright 2014, htc
#
# All rights reserved - Do Not Redistribute
#
if platform?('centos')
  package "perl-ExtUtils-MakeMaker"
end

cookbook_file "cpanm" do
  mode "0755"
  owner "root"
  path "#{node['cpanm']['install_path']}/cpanm"
  action :create_if_missing
  not_if { node['cpanm']['install_from'] == 'source' }
end
