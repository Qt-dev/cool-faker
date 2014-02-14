require 'rspec'
require 'yaml'

describe "The data file" do
  FILE = 'lib/cool_faker/data.yml'
  describe "the file with all the data (data.yml)" do

    it "should exist" do
      File.exist?(FILE).should be_true
    end

    it "should be loadable" do
      File.open(FILE).should_not raise_error
    end

    it "should be loadable by YAML" do
      YAML.load_file(FILE).should_not raise_error
    end
  end

  describe "The names node" do
    it "should exist" do
      YAML.load_file(FILE).should include("names")
    end

    it "should have more than one subnode" do
      YAML.load_file(FILE)["names"].length.should be > 2
    end

    it "should have at least 5 possible names in every subnode(theme)" do
      YAML.load_file(FILE)["names"].each do |subnode|
        subnode[1].length.should be > 5
      end
    end
  end


  describe "the quotes node" do
  # Begin quotes data testing
    it "should exist" do
      YAML.load_file(FILE).should include("quotes")
    end

    it "should have at least 15 possible quotes" do
      YAML.load_file(FILE)["quotes"].length.should be > 5
    end

    it "should have at least 3 words in every quote" do
      YAML.load_file(FILE)["quotes"].each do |quote|
        quote.split('').length.should be > 3
      end
    end
  end
end