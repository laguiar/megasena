# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_megasena_session',
  :secret      => 'efb87024ffe3ae4539109752911c8a7d8d3dc7e68e073e7457592cbef9a9cebcb7df764224048a180e61d7ee104d5a2131a005ac8b195e9388196f0f055c1db4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
