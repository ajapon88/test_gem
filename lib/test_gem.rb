require 'test_gem/version'

module TestGem
  class Error < StandardError; end
  def self.greet
    'Hello'
  end
end
