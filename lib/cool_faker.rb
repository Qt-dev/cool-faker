#getting an unknown error
# require_relative "../cool_faker/version"


require "yaml"

module CoolFaker
  class Base

    def self.parse(file)
      YAML.load(File.open(file))
    end

    def self.dir
      File.expand_path(File.dirname(__FILE__))
    end

  end

end

require 'name'
require 'team'