require_relative "cool_faker"

module CoolFaker
  class Team < Base
    @data = self.parse(dir + '/cool_faker/data.yml')

    def self.name
      "#{@data['adjectives'].sample.capitalize} #{@data['animals'].sample.capitalize}"
    end

    def self.slogan
      @data['quotes'].sample
    end

  end
end

