# Regeoip

Regeoip come with GeoIP.dat and GeoIPv6.dat so that it will resolve
either IPv4 or IPv4 to country without a need for a request.

All you need is: `Regeoip.resolve_country_code2(ip)`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'regeoip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install regeoip

## Usage

Get country data:

    Regeoip.resolve_country(ip)

Get country code:

    Regeoip.resolve_country_code2(ip)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/regeoip.

