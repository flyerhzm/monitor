require 'socket'

class UnrollerServer
  def initialize(unroller_port = 9099)
    @socket = TCPServer.open(unroller_port)
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