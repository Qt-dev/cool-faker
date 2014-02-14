require 'rspec'
require_relative '../lib/name.rb'

describe CoolFaker::Character, "name class for famous faker" do

  describe "name method" do
  name = CoolFaker::Character
    it "should return a string" do
      name.name.should be_a String
    end
  end

end