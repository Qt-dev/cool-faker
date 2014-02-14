require_relative "cool_faker"

module CoolFaker
  class Character < Base

    def name(file)
      movies = self.class.parse(file)
      movies[movies.keys.sample].sample
    end

  end
end

my_name = CoolFaker::Character.new

p my_name.name('lib/cool_faker/name.yml')


