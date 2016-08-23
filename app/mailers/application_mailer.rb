class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@training.wolox.com.ar'
  layout 'mailer'

  def new_record_notification(record)
    @record = record
    mail to: "recipient@MYDOMAIN.com", subject: "Success! You did it."
  end

end
