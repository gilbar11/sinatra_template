require 'sinatra'
require 'json'
require 'sinatra/activerecord'
require 'nokogiri'
require 'open-uri'
require 'active_support'


set :bind, '0.0.0.0'
set :logging, true
set :public_folder, File.dirname(__FILE__) + '/public'

def init_db
  db = URI.parse('')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :port     => db.port,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
