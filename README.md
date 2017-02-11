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

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/phuongnd08/regeoip.

