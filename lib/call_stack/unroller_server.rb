require 'socket'

class UnrollerServer
  def initialize
    @socket = TCPServer.open('9099')
  end
  
  def run
    loop {
      client = @socket.accept 
      while line = client.gets 
        Controller.instance.outputs << line
      end
      client.close
    }
  end
end