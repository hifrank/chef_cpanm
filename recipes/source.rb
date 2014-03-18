#
# Cookbook Name:: cpanm
# Recipe:: source
#
# Copyright 2014, htc
#
# All rights reserved - Do Not Redistribute
#
include_recipe "cpanm::default"
bash "install cpanm from source" do
  user "root"
  cwd  node['cpanm']['install_path']
  code <<-EOH
    curl -LO #{node['cpanm']['install_source_url']}
    chmod +x cpanm
  EOH
  not_if do ::File.exists?("#{node['cpanm']['install_path']}/cpanm") end
end
