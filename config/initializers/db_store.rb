require 'sequel'

if Rails.env.production?
  raise "Missing DB environment variables" unless ENV['DB_USER'] && ENV['DB_PASSWORD'] && ENV['DB_NAME']
  DB = Sequel.oracle(:user=> ENV['DB_USER'], :password=>ENV['DB_PASSWORD'], :database=>ENV['DB_NAME'])
else Rails.env.development?
  DB = Sequel.connect("postgres://postgres:postgres@localhost/training_#{Rails.env}")
end