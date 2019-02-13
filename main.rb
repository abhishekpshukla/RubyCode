# Ruby Script to test the classMethods and included 
require './lib/included_class_method'
# 
class Main
	include IncludedClassMethod
end

Main.new.test
Main.class_method_one

# Output 
# I am included_class_method
# I am test
# This is class Method
