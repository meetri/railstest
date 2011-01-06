class UserMailer < ActionMailer::Base
  
  default :from => "admin@railstest.com"
  
  def welcome(user)
    @user = user
    
    mail(:to => user.email,
         :subject => "Welcome to My Awesome Site")
       
  end
  
end
