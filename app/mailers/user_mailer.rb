class UserMailer < ActionMailer::Base
  default from: "railsdev@denenberg.net"
    
  def make_contact(name,email,message)
    @name = name
    @email = email
    @message = message
    mail(:to => 'andy@denenberg.net', :subject => "Message from, #{name}")
  end
end
