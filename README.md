# CoolFaker

A faker gem that generates famous and fun data !

## Installation

Add this line to your application's Gemfile:

    gem 'cool_faker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cool_faker

## Usage

There are 2 parts to this gem :

### Characters

#### Name 
    CoolFaker::Character.name
Gives a random name from a famous movie or TV show.

#### Name_from

    CoolFaker::Character.name_from(TITLE)
Gives a random name from the selected TV show or movie.
The available options are : 

    monty_python
    futurama
    the_simpsons
    toy_story
    back_to_the_future
    the_wizard_of_oz
    snow_white
    napolean_dynamite 
    the_lord_of_the_rings
    star_wars
    superman
    startrek
    batman
    sex_and_the_city
    entourage
    friends

### Team
#### Name
    CoolFaker::Team.name
Gives a team name generated from one adjective and one animal name. Go 'depressed pandas'!

#### Slogans
    CoolFaker::Team.slogan
Gives a Famous quote in less than 140 characters, to use as a slogan.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/cool_faker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
