require_relative "cool_faker"

module CoolFaker
  class Team < Base

    def self.slogan
      data = self.parse(dir + '/cool_faker/data.yml')
      data['quotes'].sample
    end

  end
end

