# food-runners

[![Build Status](https://img.shields.io/travis/compwron/food-runners.svg)](https://travis-ci.org/compwron/food-runners)
[![Gem Version](https://img.shields.io/gem/v/food-runners.svg)](https://rubygems.org/gems/food-runners)
[![Coverage](https://img.shields.io/codecov/c/github/compwron/food-runners.svg)](https://codecov.io/github/compwron/food-runners)
[![Gemnasium](https://img.shields.io/gemnasium/compwron/food-runners.svg)](https://gemnasium.com/compwron/food-runners)
[![License](https://img.shields.io/badge/license-Apache_2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)


Integrates with http://www.foodrunners.org/ (San Francisco area only) to summon pickup of food programatically from ruby.

I have communicated briefly with Food Runners via email but I am not sure that we understand each other thouroughly.

All donation requests will include a short note about this rubygem.

There is no testing mode. ``.donate!`` contacts a real human being in the Food Runners organization.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'food-runners'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install food-runners

## Usage

````ruby
contact_info = FoodRunners::Contact.new('company name', 'donater name', 'donater email', 'donater phone number', 'pickup address', 'pickup zip code')

pickup_date_time = FoodRunners::PickupTime.new(FoodRunners::PickupDay::TOMORROW, 13) # hour of day

food_description = FoodRunners::Food.new(food_types, 5, true, 'nine pounds of potatos and one large tray of veggie tacos')

donation = FoodRunners::Donation.new(contact_info, pickup_date_time, food_description, other_information) # other_information will be prepended to a description of this gem

result = donation.submit!(true) # defaults to not really pressing the submit button

result.errors # [FoodRunners::DonationError::NON_SF_ZIP_CODE, FoodRunners::DonationError::UNKNOWN]
````

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/compwron/food-runners.

