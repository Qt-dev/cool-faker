require_relative "cool_faker"

module CoolFaker
  class Character < Base

    @data = self.parse(dir + '/cool_faker/data.yml')

    def self.name
      @data['names'][@data['names'].keys.sample].sample
    end

    def self.name_from(movie)
      @data['names'][movie].sample
    end

  end
end

