class SimpleMailer < ApplicationMailer
  default from: 'feedback@example.com'

  def feedback_email
    @url = 'https://polar-retreat-71474.herokuapp.com/#contact'
    mail(to: 'polar.reatreat.71474@gmail.com', subject: 'Feedback from your profile')
  end
end
