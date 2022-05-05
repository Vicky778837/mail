class UsermailerMailer < ApplicationMailer
     def welcome_email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.email, subject: 'Welcome to Chetu  Site')
   end
end
