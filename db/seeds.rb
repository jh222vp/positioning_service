# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
EndUser.delete_all
Doodle.delete_all
Location.delete_all
Tag.delete_all

u1 = User.create(email: "admin@admin.se", password: "hejhej", password_confirmation: "hejhej", webbsite_url: "www.hejhej.se", website_name: "hejhej-siten", is_user_admin: true)
u2 = User.create(email: "clientUser@user.se", password: "hejhej", password_confirmation: "hejhej", webbsite_url: "www.hejhej.se", website_name: "hejhej-siten", is_user_admin: false)


EndUser.create(email: "user1@user.se", password: "hejhej", password_confirmation: "hejhej", username: "hejhej", bio_text: "hejhej bio text")
EndUser.create(email: "user2@user.se", password: "hejhej", password_confirmation: "hejhej", username: "hejhej2", bio_text: "hejhej bio text")


d = Doodle.create(doodle_text: "En doodle i Berlin")
l = Location.create(lat: 52.518825, lng: 13.396297)
d.location_id = l.id
EndUser.first.doodles << d

d = Doodle.create(doodle_text: "En doodle i Paris")
l = Location.create(lat: 48.857165, lng: 2.347060)
d.location_id = l.id
EndUser.last.doodles << d



Tag.create(name: "working")
Tag.create(name: "hangin out")
Tag.create(name: "beeing important")
Tag.create(name: "saving the world")
