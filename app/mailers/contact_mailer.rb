class ContactMailer < ActionMailer::Base
  
  def contact_us(info)
    @message = info
    mail(:to => "johnhenry.liberty@gmail.com", :subject => @message.subject, :from => @message.email)
  end
end
