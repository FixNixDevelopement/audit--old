ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "fixrnix.in",
    :user_name            => "nixers@fixrnix.in",
    :password             => "s3cure@fixnix!",
    :authentication       => "plain",
    :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
