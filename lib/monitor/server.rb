require 'rubygems'
require 'sinatra'

class MonitorApp < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/static'
  set :views, File.dirname(__FILE__) + '/templates'
  
  require 'erb'
  
  get '/monitor/request' do
    while !Controller.instance.push?
      sleep 1
    end
    "<div>#{Controller.instance.outputs.shift}</div>"
  end
  
  get '/javascripts/jquery-1.3.2.min.js' do
    send_file File.dirname(__FILE__) + '/static/javascripts/jquery-1.3.2.min.js'
  end

  get '/javascripts/monitor.js' do
    send_file File.dirname(__FILE__) + '/static/javascripts/monitor.js'
  end
  
  get '/stylesheets/monitor.css' do
    send_file File.dirname(__FILE__) + '/static/stylesheets/monitor.css'
  end
  
  get '/images/icons.png' do
    send_file File.dirname(__FILE__) + '/static/images//icons.png'
  end
  
  get '/' do
    erb :index
  end
end
