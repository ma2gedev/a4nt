# A4nt

## Installation

Add this line to your application's Gemfile:

    gem 'a4nt'

And then execute:

    bundle install
    rake a4nt:install:migrations
    rake db:migrate

And it needs to be mounted in config/routes.rb file:

    mount A4nt::Engine, at: '/a4nt'
    # /a4nt is a example

