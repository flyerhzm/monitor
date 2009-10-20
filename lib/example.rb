require 'monitor/unroller'

# Unroller::trace
Unroller::trace :display_style => :concise

class Test
	def test
		a = 1
		b = 2
		another
	end
	
	def another
	  b = 2
	  a = 1
  end
end

t = Test.new
t.test

