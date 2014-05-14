class Emailer < ActionMailer::Base
  
  
  def contact_email(from_name,from_email,from_subject,from_message)
    @from_name = from_name
    @from_message = from_message
    mail(from: from_email, to: "korczyn@gmail.com", subject: from_subject)
  end
  
end
