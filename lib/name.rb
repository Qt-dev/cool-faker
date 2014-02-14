require_relative "cool_faker"

module CoolFaker
  class Character < Base

    def self.name
      movies = self.parse(dir + '/cool_faker/data.yml')
      movies['names'][movies['names'].keys.sample].sample.to_s
    end



  end
end
