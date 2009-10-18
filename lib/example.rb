require 'call_stack/unroller'

# Unroller::trace
Unroller::trace :display_style => :concise

class Test
	def test
		a = 1
		b = 2
	end
end

t = Test.new
t.test

