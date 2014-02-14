require_relative "cool_faker"

module CoolFaker
  class Name < Base

    def get_name(file)
      movies = self.class.parse(file)
      movies[movies.keys.sample].sample
    end

  end
end

my_name = CoolFaker::Name.new

p my_name.get_name('lib/cool_faker/name.yml')


