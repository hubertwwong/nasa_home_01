require "spec_helper"

describe Station do
  
  describe "basic db" do
    it "write something" do
      station_one = Station.new
      station_one.name = "mir"
      station_one.description = "russian space station"
      station_one.save
      assert_equal 1, Station.all.count
    end
  end
  
  describe "test" do
    it "self.hello" do
      Station.hello.should == "hello"
    end
  end
  
end