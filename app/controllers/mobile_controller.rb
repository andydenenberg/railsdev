class MobileController < ApplicationController

  def posts
    @posts = Post.all
  end


end
