ENV['RAILS_ENV'] ||= 'test'

require 'rubygems'
require 'test/unit'

require 'rails/all'
require 'active_assets'

require 'socket'
require 'timeout'

TEST_RAILS_ROOT = File.expand_path('../fixtures/rails_root', __FILE__)

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each {|f| load f }

load File.join(TEST_RAILS_ROOT, 'config/application.rb')

class Test::Unit::TestCase
  include RailsHelper

  def sprites
    Rails.application.sprites
  end

  def tear_down_assets
    Rails.application.sprites.clear
    Rails.application.expansions.clear
  end
end
