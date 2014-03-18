require 'minitest/autorun'

describe "foobar::default" do

  it "cpanm must exist" do
    assert File.exists?("/usr/bin/cpanm")
  end


  it "cpanm must excutable" do
    assert File.executable?("/usr/bin/cpanm")
  end

end
