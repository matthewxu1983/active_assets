require 'helper'

class RunnerTest < Test::Unit::TestCase

  def setup
    initialize_application_or_load_assets!
  end

  def teardown
  end

  def test_generate!
    assert_false Rails.application.sprites.all.empty?
    
    Rails.application.sprites.generate!
  end
end