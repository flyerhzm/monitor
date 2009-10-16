require 'unroller'

class Unroller
  def newline
    unless @output_line.strip.length_without_color == 0 or @output_line == @last_line_printed
      Controller.instance.outputs << @output_line
      @last_line_printed = @output_line
    end

    @output_line = ''
    @column_counter = 0
  end
end