# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
Campaign.destroy_all

User.destroy_all



user1 = User.create(name: "luis Reyes", email: "fake@email.com", company: "Totally Real Company", password: "fake123")
puts "user created"
campaign1 = Campaign.create(owner: user1, begin_time: Time.now, end_time: Time.new(2020, 7,28,5,28), length: 90, name: "First Day of Interviews with Jules & Luis", description: "This is us testing the first campaign. We just want to make sure this exists and takes a description and all the works")
puts "campaign created"
apointment1 = Appointment.create(campaign: campaign1, attendee_email: "fakeInterviewer@email.com", attendee_name: "Fake Interviewer 1", status: "pending")
puts "appointment created"

