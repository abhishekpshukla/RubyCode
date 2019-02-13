# Ruby Script to test the classMethods and included 

require './lib/active_support'

module Main
	extend ActiveSupport::Concern
	
	included do
		puts "I am included"
	end


	def test
		puts "I am test"
	end

	# Define a class Method
	module ClassMethods
		def class_method_one
			puts "This is class Method"
		end
	end

end

# 
class Abc
	include Main
end

Abc.new.test
Abc.class_method_one

# Output 
# I am included
# I am test
# This is class Method
