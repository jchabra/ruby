require 'pry'
require 'twitter'

Twitter.configure do |config|
	config.consumer_key = 'RAUcMvPD5sGsIlUDvroA5w'
	config.consumer_secret = 'N3Id1Y6qzOUNEOeY9qOM3fE9ds51QGS3r88BjQDeo'
	config.oauth_token = '351649361-1TFyPqIoVYbea9WeI6VdWJGSPRWyIwHoPT5eFknK'
	config.oauth_token_secret = 'BXeJ4FKayWLSiY4vOhR0SZPSyq0lRu1IfkvMZ9Bf72o'
end

binding.pry