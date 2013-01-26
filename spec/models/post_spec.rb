require 'spec_helper'

describe Post do
#  pending "add some examples to (or delete) #{__FILE__}"
  
  it "should have attachment" do
    attach = Post.attach
    attach.should be_true
  end
  
end
