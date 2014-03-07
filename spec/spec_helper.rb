require 'rspec'

require "simplecov"
SimpleCov.start if ENV['COVERAGE']
 
$:.unshift(File.dirname(__FILE__) + '/../lib')
