require 'call_stack/unroller'

Unroller::trace

class Test
	def test
		a = 1
		b = 2
	end
end

t = Test.new
t.test

