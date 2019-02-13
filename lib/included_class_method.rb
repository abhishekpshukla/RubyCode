# IncludedClassMethod 
require 'active_support'

module IncludedClassMethod
  extend ActiveSupport::Concern
    
  included do
    p "I am included"
  end

  def test
    p "I am test"
  end

  # Define a class Method
  module ClassMethods
    def class_method_one
      p "This is class Method"
    end
  end
end