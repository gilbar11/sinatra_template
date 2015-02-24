require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require File.expand_path '../ops.rb', __FILE__
run Sinatra::Application