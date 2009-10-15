require 'rubygems'
require 'sinatra'

class CallStackApp < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/static'
  set :views, File.dirname(__FILE__) + '/templates'
  
  require 'erb'
  
  get '/call_stack/request' do
    sleep 10
    "{'msg':'hello world'}"
  end
  
  get '/javascripts/prototype.js' do
    send_file File.dirname(__FILE__) + '/static/javascripts/prototype.js'
  end
  
  get '/call_stack' do
    erb :index
  end
end

CallStackApp.run! :host => 'localhost', :port => 9090
