require_relative 'spec_helper'
describe DateLine do

  describe "#init" do
    it "should print line" do
      date_line = DateLine.new(DateTime.new(2012), DateTime.new(2012), "Chicago")
      date_line.to_s.should == "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| Chicago"
    end
  end
end