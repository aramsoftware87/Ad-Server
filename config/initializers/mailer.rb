# require "smtp_tls"

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :port           => 587,
#  :domain         => 'your.email.server',
  :authentication => :plain,
  :user_name      => 'aramsoftware87@gmail.com',
  :password       => 'aram2726'
}


# :address              => 'smtp.gmail.com',
# :port                 => '587',
# :enable_starttls_auto => true,
# :user_name            => 'aramsoftware87@gmail.com',
# :password             => 'aram2726',
# :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
# :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server