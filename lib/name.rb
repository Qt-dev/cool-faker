require_relative "cool_faker"

module CoolFaker
  class Character < Base

    def self.name
      data = self.parse(dir + '/cool_faker/data.yml')
      data['names'][data['names'].keys.sample].sample.to_s
    end



  end
end
