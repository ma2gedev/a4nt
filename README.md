# A4nt

## :warning: This library is no longer maintained :warning:

## Installation

Add this line to your application's Gemfile:

    gem 'a4nt'

For Rails 4

    gem 'a4nt', '~> 2.0.0'

For Rails 3

    gem 'a4nt', '~> 1.0.0'

And then execute:

    bundle install
    bundle exec rake a4nt:install:migrations
    bundle exec rake db:migrate

And it needs to be mounted in config/routes.rb file:

    mount A4nt::Engine, at: '/a4nt'
    # /a4nt is just an example

## MEMO: How to develop

Edit Rakefile and test/test_helper.rb to change dummy app.

    bundle exec rake db:migrate
    bundle exec rake test

