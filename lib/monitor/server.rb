require 'rubygems'
require 'sinatra'

class MonitorApp < Sinatra::Base
  set :static, true
  set :public, Proc.new { File.expand_path(File.dirname(__FILE__) + '/../../public') }
  
  get '/monitor/request' do
    while !Controller.instance.push?
      sleep 1
    end
    "<div>#{Controller.instance.outputs.shift}</div>"
  end
  
  get '/' do
    redirect '/index.html'
  end
end
