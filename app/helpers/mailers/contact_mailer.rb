class ContactMailer < ActionMailer::Base

  def contact_email(name, email, body)
    @name = name
    @emal = email
    @body = body
       
    mail(from: email, subject: 'Contact Message')
  end
  end



