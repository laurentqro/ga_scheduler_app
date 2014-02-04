# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = [
  {first_name: "Laurent", last_name: "Curau", email: "laurentcurau@gmail.com"},
  {first_name: "Tim", last_name: "Elder", email: "tim@example.com"},
  {first_name: "Nico", last_name: "Castro", email: "nico@example.com"},
  {first_name: "Andy", last_name: "Born", email: "andy@example.com"},
  {first_name: "Clem", last_name: "Kazda", email: "clemz@example.com"},
  {first_name: "Nikolas", last_name: "Mantis", email: "nikolas@example.com"},
  {first_name: "Mark", last_name: "Randhawa", email: "mark@example.com"},
  {first_name: "Max", last_name: "Norton", email: "maxn@example.com"},
  {first_name: "Max", last_name: "Perchik", email: "maxp@example.com"},
  {first_name: "Issam", last_name: "Sultan", email: "issam@example.com"},
  {first_name: "Kriszta", last_name: "Matyi", email: "kriszta@example.com"},
  {first_name: "Thomas", last_name: "Martin", email: "thomas@example.com"},
  {first_name: "Imran", last_name: "Sulemanji", email: "imran@example.com"},
  {first_name: "Alex", last_name: "Pounds", email: "mp@example.com"},
  {first_name: "Michael", last_name: "Pavling", email: "mp@example.com"},
  {first_name: "Collyn", last_name: "Ahart", email: "collyn@example.com"},
  {first_name: "Rob", last_name: "Miller", email: "rob@example.com"}
]

users.each do |user|
  User.create first_name: user[:first_name], last_name: user[:last_name], email: user[:email]
end

Role.destroy_all

roles = ["admin", "instructor", "student"]

roles.each do |role|
  r = Role.new
  r.name = role
  r.save
end

TimeSlot.destroy_all

time_slots = ["day", "evening"]

time_slots.each do |time_slot|
  t = TimeSlot.new
  t.name = time_slot
  t.save
end

Course.destroy_all

courses = [
{ name: "Web Development Immersive", description: "Build a work-ready skill set and fluency in full stack web development, develop a portfolio of projects individually and in small teams that are ready to present to employers, prepare for an internship or entry-level job as a jr. web developer."},
{ name: "Front End Web Development", description: "Design and code beautiful, interactive client-facing websites, program websites in HTML, CSS and JavaScript and master the technical vocabulary to communicate your ideas to your teammates and other stakeholders"},
{ name: "Social Strategy for Brands", description: "Learn key techniques for identifying unique cultural opportunities to connect with consumers and their culture. Learn how some of the best brands achieve the social pull they have through case studies."},
{ name: "Getting Started With Github", description: "From the fundamentals of version control to publishing your first project, you’ll learn everything you need to know about GitHub and how it works in this class."}
]

courses.each do |course|
  Course.create name: course[:name], description: course[:description]
end

Classroom.destroy_all

classrooms = [
  { name: "Small", location: "9 Back Hill, London", capacity: 10 },
  { name: "Medium", location: "9 Back Hill, London", capacity: 15 },
  { name: "Large", location: "9 Back Hill, London", capacity: 25 }
]

classrooms.each do |classroom|
  Classroom.create name: classroom[:name], location: classroom[:location], capacity: classroom[:capacity]
end
