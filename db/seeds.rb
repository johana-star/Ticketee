# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.create(:email => "admin@ticketee.com",
                         :password => "password")
admin_user.admin = true
admin_user.confirm!

# Bs-MacBook-Air:Ticketee strand$ rake db:seed
# rake aborted!
# SQLite3::ConstraintException: constraint failed: INSERT INTO "users" ("admin", "confirmation_sent_at", "confirmation_token", "confirmed_at", "created_at", "current_sign_in_at", "current_sign_in_ip", "email", "encrypted_password", "last_sign_in_at", "last_sign_in_ip", "remember_created_at", "reset_password_sent_at", "reset_password_token", "sign_in_count", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)


Project.create(:name => "Ticketee Beta")