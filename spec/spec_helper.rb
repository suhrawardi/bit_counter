# Require simplecov for code coverage
require 'simplecov'

SimpleCov.profiles.define 'bit_counter' do
  add_filter '/spec/'
  add_group 'Libraries', 'lib'
end

SimpleCov.start 'bit_counter'
SimpleCov.use_merging false

RSpec.configure do |config|
  config.mock_with :rspec
end

require File.expand_path('spec_helpers.rb', File.dirname(__FILE__))

RSpec.configure do |c|
  c.include SpecHelpers
end

Dir[File.expand_path('../lib/**/*.rb', File.dirname(__FILE__))].each do |file|
  require file
end
