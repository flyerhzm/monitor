require 'rubygems'
require 'sinatra'

class CallStackApp < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/static'
  set :views, File.dirname(__FILE__) + '/templates'
  
  require 'erb'
  
  get '/call_stack/request' do
    while !Controller.instance.push?
      sleep 1
    end
    "<div>#{Controller.instance.outputs.shift}</div>"
  end
  
  get '/javascripts/jquery-1.3.2.min.js' do
    send_file File.dirname(__FILE__) + '/static/javascripts/jquery-1.3.2.min.js'
  end
  
  get '/call_stack' do
    erb :index
  end
end
