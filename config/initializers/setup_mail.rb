ActionMailer::Base.smtp_settings = {
	:tls => true,
	:address 			=> "smtp.gmail.com",
	:port				=> 587,
	:domain				=> "",
	:authenticatio		=> :plain,
	:user_name			=> "driveritauto@gmail.com",
	:password			=> "$Driver!t"
}