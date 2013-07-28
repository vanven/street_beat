class RegistrantMailer < ActionMailer::Base
  default from: "from@example.com"

  def register_email(registrant)
  	@registrant = registrant

  	mail to: @registrant.email, subject: "Register for Street Beat"
  end
end
