require "spec_helper"

describe Personnel do
  
  describe "test" do
    it "self.hello" do
      Personnel.hello.should == "hello"
    end
  end
  
  describe "basic db test" do
    before(:each) do
      # Returns a saved User instance
      @personnel1 = FactoryGirl.create(:personnel)
    end
  
    it "should have 1 user" do
      Personnel.all.size.should == 1
    end
  end
  
end