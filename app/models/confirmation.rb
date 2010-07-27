class Confirmation < ActionMailer::Base
  def thanks(email, pass, name)
      recipients email
      from "no-reply@your_rails_app.com"
      subject "Your Account Details!"
      sent_on Time.now
      body :name => name, :pass => pass
  end
end
