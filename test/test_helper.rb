# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy_rails4/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
# See Also: https://github.com/rails/rails/issues/4971
ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)

class ActiveSupport::TestCase
  fixtures :all
end

module A4nt
  class ActionController::TestCase
    setup do
      @routes = Engine.routes
    end
  end
end
