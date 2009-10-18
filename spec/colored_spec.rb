require File.dirname(__FILE__) + '/spec_helper' 

describe Colored do
  it "test color" do
    "red".red.should == "<span class='red'>red</span>"
  end

  it "test extra" do
    "bold".bold.should == "<span class='bold'>bold</span>"
  end
end
