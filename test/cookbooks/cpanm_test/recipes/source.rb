include_recipe "cpanm::source"
cpanm_package do
  packages ["Net::SSLeay"]
end
