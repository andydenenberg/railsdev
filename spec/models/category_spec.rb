require 'spec_helper'

describe Category do
    
  it "should have three elements" do
    cat = Category.new.array
    (cat.count == 3).should be_true
  end
  
  it "should expose an array of words" do
    Category.new.array.join.include?('Business').should be_true
    Category.new.array.join.include?('Rails').should be_true
    Category.new.array.join.include?('Ruby').should be_true
  end
     
end
