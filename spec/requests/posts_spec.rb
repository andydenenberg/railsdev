require 'spec_helper'
require "cancan/matchers"

describe "Posts" do
    
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get posts_path
      response.should redirect_to(new_user_session_path)
    end
  end
end
