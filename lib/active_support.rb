# ActiveSupport module is called to 
module ActiveSupport

	module Concern

		# in order to include a ClassMethods and included method... 
		def included(base = nil, &block)
			begin
				@base = base if @base.nil?
				@block = block if block_given?


				# Need to check if the included is declared or not..
				if (!@base.nil? && instance_variable_defined?(:@block))
					# included bock is passed to class_eval which will generate a instance method...
					@base.class_eval(&@block)
				end

				# To check if the ClassMethods is is declared 
				if @base && const_defined?(:ClassMethods)
			   base.extend self::ClassMethods
				end
			rescue => e
				p "Error: #{e.message}"
			end
		end
	end
	
end