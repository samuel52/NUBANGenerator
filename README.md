This repo contains the algorithm for generating and validating a NUBAN (Nigeria Uniform Bank Account Number) in Ruby. The algorithm is based on this here CBN specification for the 10-digit NUBAN. 10-digit is stated because CBN announced not too long ago that it's considering updating the specification for a NUBAN; which might see the NUBAN getting up to 16-digits in length.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nuban'
```

And then execute:
```ruby
bundle
```

Or install it yourself as:
```ruby
gem install nuban
```

## Usage
```ruby
require 'nuban'

generateNuban = Nigerian::Nuban.generate_nuban("095", "901238930")
render json: generateNuban
```


Finish

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nuban.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
