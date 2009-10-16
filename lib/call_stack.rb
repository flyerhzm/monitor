require 'call_stack/controller'
require 'call_stack/server'
require 'call_stack/unroller'
require 'call_stack/unroller_server'
require 'thread'

Thread.start do 
  UnrollerServer.new.run 
end
CallStackApp.run! :host => 'localhost', :port => 9090