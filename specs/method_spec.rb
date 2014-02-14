require 'rspec'
require_relative '../lib/name.rb'

describe CoolFaker::Name, "name class for famous faker" do

  describe "get_name method" do
  name = CoolFaker::Name.new
    it "should return a string" do
      file = 'lib/cool_faker/name.yml'
      name.get_name(file) =~ /\w+/
    end
  end

end