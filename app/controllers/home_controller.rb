class HomeController < ApplicationController

def index
  @user = User.new
  @user.name = ''
end  

def make_contact
  UserMailer.make_contact(params[:name],params[:email],params[:message]).deliver  
  redirect_to root_path
end

end
