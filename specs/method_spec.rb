require 'rspec'
# require_relative '../lib/name.rb'
require_relative '../lib/cool_faker.rb'
FILE = 'lib/cool_faker/data.yml'


describe CoolFaker::Character, "name class for famous faker" do

  describe "name method" do
    it "should return a string" do
      CoolFaker::Character.name.should be_a String
    end
  end

  describe "name_from method" do
    names = YAML.load_file(FILE)["names"]
    names.each do |movie, name_ary|

      it "should return a string" do
        CoolFaker::Character.name_from(movie).should be_a String
      end

      it "should select a character from #{movie}" do
        names[movie].include?(CoolFaker::Character.name_from(movie))
      end

    end
  end


end

describe CoolFaker::Team, "team class for famous faker" do
  describe "team slogan method" do
    it "should return a string" do
      CoolFaker::Team.slogan.should be_a String
    end

    it "should be shorter than 140 characters" do
      CoolFaker::Team.slogan.length.should be < 140
    end

    it "should be longer than 3 words" do
      CoolFaker::Team.slogan.split(" ").length.should be > 3
    end

  end

end