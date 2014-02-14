require 'rspec'
require_relative '../lib/name.rb'

describe CoolFaker::Character, "name class for famous faker" do

  describe "get_name method" do
  name = CoolFaker::Character.new
    it "should return a string" do
      file = 'lib/cool_faker/name.yml'
      name.name(file) =~ /\w+/
    end
  end

end