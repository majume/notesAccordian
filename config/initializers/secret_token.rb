# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# AccordianNotes::Application.config.secret_key_base = 'c33ec80abe8cd76c3bdaa0052e6c143bf0a355a40106b12d0d8ed9a43f1a2175a00433fbea53525b259ffa13b43ff873ba696e6045d351de265a9b305c04fab6'

require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exists?(token_file)
		#Use the existing token
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token_file
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

AccordianNotes::Application.config.secret_key_base = secure_token