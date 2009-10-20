require 'socket'
require 'rubygems'
require 'unroller'
require File.dirname(__FILE__) + '/../colored/colored'

class Unroller
  alias_method :origin_initialize, :initialize
  def initialize(*args)
    origin_initialize(*args)
    @indent_step = "<span class='indent'>" + '|'.magenta + "</span>"
    @column_separator = "<span class='column'>" + '|'.yellow.bold + "</span>"
    @screen_width = 99999
    @socket = TCPSocket.open('localhost', args[:unroller_port] || 9099)
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
