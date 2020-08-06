# MaNameGenerator

[![Build Status](https://travis-ci.org/barash-asenov/ma_name_generator.svg?branch=master)](https://travis-ci.org/barash-asenov/ma_name_generator.svg?branch=master)

Simple random name M&A name generator for ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ma_name_generator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ma_name_generator

## Usage

Only have two functionality.

```ruby
MaNameGenerator.generate # generates random M&A name

MaNameGenerator.generate_unique excluding: %w[item1 item2] # exclude items you've already used to get unique one
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
