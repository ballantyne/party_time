# PartyTime

A quick api wrapper for the Sunlight Foundation Political Party Time api.  I couldn't find one for this api.

## Installation

Add this line to your application's Gemfile:

    gem 'party_time'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install party_time

## Usage
    # open a ruby prompt to try it out
    irb

    # then type

    require 'rubygems'
    require 'party_time'
    PartyTime::Config.api_key = SUNLIGHT_FOUNDATION_KEY
    # get your key here http://sunlightfoundation.com/api/

    PartyTime::Event.new('beneficiaries__crp_id' => 'N00003675') 

    # There are many more api endpoints here http://sunlightlabs.github.io/partytime-docs/
    #go look at the documentation.

    # I haven't really tried this gem much, let me know if there are any problems.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
