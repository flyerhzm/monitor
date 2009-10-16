require 'socket'
require 'rubygems'
require 'unroller'

class Unroller
  alias_method :origin_initialize, :initialize
  def initialize(*args)
    origin_initialize(*args)
    @socket = TCPSocket.open('localhost', '9099')
  end
  
  def newline
    unless @output_line.strip.length_without_color == 0 or @output_line == @last_line_printed
      @socket.puts @output_line
      @last_line_printed = @output_line
    end

    @output_line = ''
    @column_counter = 0
  end
end