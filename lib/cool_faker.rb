#getting an unknown error
# require_relative "../cool_faker/version"


require "yaml"

module CoolFaker
  class Base

    def self.parse(file)
      YAML.load(File.open(file))
    end

  end

end

# faker = CoolFaker::Base

# faker.parse('cool_faker/name.yml')

# faker.parse('cool_faker/name.yml')
