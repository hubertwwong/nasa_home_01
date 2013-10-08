require "spec_helper"

describe Station do
  
  describe "basic db" do
    it "write 1 thing" do
      station_one = Station.new
      station_one.name = "mir"
      station_one.description = "russian space station"
      station_one.save
      
      Station.all.count.should be > 1
    end
    
    it "read station1" do
      station_one = Station.find_by first_name: 'station1'
      station_one.description.should be 'station 2 description'
    end
  end
  
  describe "test" do
    it "self.hello" do
      Station.hello.should == "hello"
    end
  end
  
end