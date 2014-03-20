#
# Cookbook Name:: cpanm
# Recipe:: default
#
# Copyright 2014, htc
#
# All rights reserved - Do Not Redistribute
#
if platform?('centos')
  # some cpam need gcc & openssl for compile & test.
  package "gcc"
  package "openssl-devel"
  package "make"
  package "perl" 

  if 6 == node['platform_version'].to_i
    package "perl-ExtUtils-MakeMaker" 
  else
    cookbook_file "perl-ExtUtils-MakeMaker-6.56-5.el5.noarch.rpm" do
      mode "0755"
      owner "root"
      group "root"
      path "/tmp/perl-ExtUtils-MakeMaker-6.56-5.el5.noarch.rpm"
      not_if "rpm -q perl-ExtUtils-MakeMaker"
    end
    bash "install perl-ExtUtils" do
      user "root"
      cwd  "/tmp/"
      code <<-EOH
        rpm -ivh /tmp/perl-ExtUtils-MakeMaker-6.56-5.el5.noarch.rpm
      EOH
      not_if "rpm -q perl-ExtUtils-MakeMaker"
    end
  end

end

cookbook_file "cpanm" do
  mode "0755"
  owner "root"
  group "root"
  path "#{node['cpanm']['install_path']}/cpanm"
  action :create_if_missing
  not_if { node['cpanm']['install_from'] == 'source' }
end

