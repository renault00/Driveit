ActionMailer::Base.smtp_settings = {
	:address 			=> "smtp.gmail.com",
	:port				=> 587,
	:domain				=> "",
	:user_name			=> "driveritauto@gmail.com",
	:password			=> "$Driver!t",
	:authentication		=> "plain",
	:enable_starttls_auto	=> true
}