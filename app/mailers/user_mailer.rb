class UserMailer < ApplicationMailer
  
  def welcome(user)
    @user = user
    subject = 'Welcome to Doggiedo, dog registration system'
    mail(to: @user.email, subject: "#{subject}" )
  end

  def dog_deleted(user)
  	# @dog = dog
  	@user = user
  	subject = "You have removed the dog from your details"
  	mail(to: @user.email, subject: "#{subject}")
  end

  def registration_confirmation(user,registration)
  	@user = user
  	@registration = registration
  	subject  = "New dog registration received." 
    mail(to: @user.email, subject: "#{subject}")
  end

end
