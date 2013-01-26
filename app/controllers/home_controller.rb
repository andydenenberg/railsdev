class HomeController < ApplicationController

  before_filter :prepare_for_mobile  

def index
  @user = User.new
  @user.name = ''
end  

def make_contact
  UserMailer.make_contact(params[:name],params[:email],params[:message]).deliver  
  redirect_to root_path
end


private

def prepare_for_mobile
    if request.user_agent =~ /Mobile|webOS/
      redirect_to mobile_root_path
    end
    
end

end
