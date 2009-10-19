require 'singleton'

class Controller
  include Singleton
  
  attr_accessor :outputs
  
  def initialize
    @outputs = []
  end
  
  def push?
    !@outputs.empty?
  end
end