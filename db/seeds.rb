# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "date"

Participation.delete_all
Event.delete_all
User.delete_all

u = User.create!(first_name: "jeremy", last_name: "ko", email: "jeremy@yopmail.com")
l = User.create!(first_name: "clarisse", last_name: "koko", email: "clarisse@yopmail.com")
p u
p l
e = Event.create!(start_date: DateTime.now, title: "RDV", price: 1, description: "au trampoline", duration: 60, location: "no where", user_id: u.id)
p e
par = Participation.create!(event: e, user_id: l.id, stripe_customer_id: l.id)
p par