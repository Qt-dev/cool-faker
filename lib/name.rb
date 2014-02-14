require_relative "cool_faker"

module CoolFaker
  class Character < Base

    def name(file)
      movies = self.class.parse(file)
      movies['names'][movies['names'].keys.sample].sample
    end

  end
end




