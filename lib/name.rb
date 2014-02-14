require_relative "cool_faker"

module CoolFaker
  class Name < Base

    def get_name(file)
      movies = self.class.parse(file)
      p movies[movies.keys.sample]
    end

  end
end

# my_name = CoolFaker::Name.new

# p my_name


