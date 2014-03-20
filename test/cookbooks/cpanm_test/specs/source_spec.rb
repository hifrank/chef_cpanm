require 'minitest/autorun'
require 'minitest/spec'

describe_recipe "cpanm::source" do

  it "cpanm must exist" do
    file("/usr/bin/cpanm").must_exist
  end


  it "cpanm must excutable" do
    file("/usr/bin/cpanm").must_have("0755").with(:owner, "root").and(:group, "root")
  end

end

