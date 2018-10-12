class UserMailer < ApplicationMailer
  default from: 'notifications@TODOapp.com'
  def welcome_email
  	@user = params[:user]
	@url  = 'http://localhost:3000'
	mail(to: @user.email, 
		subject: 'Welcome to My Awesome Site'
		) do |format|
		format.text
		format.html
	end
  end
  def delete_email
  	@user = params[:user]
	@url  = 'http://localhost:3000'
	mail(to: @user.email, 
		subject: 'We´ll definitley miss you'
		) do |format|
		format.text
		format.html
	end
  end
  def update_info
  	@user = params[:user]
	@url  = 'http://localhost:3000'
	mail(to: @user.email, 
		subject: 'There were changes made to you accont'
		) do |format|
		format.text
		format.html
	end
  end
 #  def activity_report(user)
 #  		mail(:to => "<#{user.email}>", :subject => "Activities Report")

	# end
 #  end
end
