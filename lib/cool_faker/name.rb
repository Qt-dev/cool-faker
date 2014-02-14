require_relative "../cool_faker.rb"

module CoolFaker
  class Name < Base

    def get_name
      movies = self.class.parse('../cool_faker/name.yml')
      p movies[movies.keys.sample]
    end

  end
end

my_name = CoolFaker::Name.new

my_name.get_name


