require_relative '../main'

describe Main do
  it "should return valid value" do
  	expect(Main.new.test).to eq("I am test")
		expect(Main.class_method_one).to eq("This is class Method")
  end
end
