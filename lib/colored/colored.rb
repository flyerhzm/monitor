module Colored
  COLOR = ['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']
  EXTRA = ['bold', 'underline']

  (COLOR + EXTRA).each do |color|
    define_method(color) do
      "<span class='#{color}'>#{self}</span>"
    end
  end
end

String.send(:include, Colored)
