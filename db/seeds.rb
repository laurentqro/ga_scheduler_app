Role.destroy_all

roles = ["admin", "instructor", "student"]

roles.each do |role|
  r = Role.new
  r.name = role
  r.save
end

User.destroy_all

students = [
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
  {first_name: "Imran", last_name: "Sulemanji", email: "imran@example.com"}
]

instructors = [
  {first_name: "Alex", last_name: "Pounds", email: "ap@example.com", profile: "Hello! I'm Alex. I'm a freelance web developer & photographer based in London. I used to work for Last.fm. I like taking photos, reading, tea, going to gigs, and making things.", twitter: "acreature"},
  {first_name: "Collyn", last_name: "Ahart", email: "collyn@example.com"},
  {first_name: "Rob", last_name: "Miller", email: "rob@example.com"},
  {first_name: "Julie", last_name: "Falconer", email: "julie@example.com"},
  {first_name: "Michael", last_name: "Pavling", email: "mp@example.com"}
]

students.each do |student|
  s = User.create first_name: student[:first_name], last_name: student[:last_name], email: student[:email], password: "notthis", password_confirmation: "notthis"
  s.roles << Role.where(name: "student").first
  s.save
end

instructors.each do |instructor|
  i = User.create first_name: instructor[:first_name], last_name: instructor[:last_name], email: instructor[:email], password: "notthis", password_confirmation: "notthis"
  i.roles << Role.where(name: "instructor").first
  i.save
end

admin = User.create first_name: "Gordon", last_name: "McRae", email: "gordon@example.com", password: "notthis", password_confirmation: "notthis"
admin.roles << Role.where(name: "admin").first
admin.save

TimeSlot.destroy_all

time_slots = ["9am to 12pm", "2pm to 5pm" ,"6pm to 9pm"]

time_slots.each do |time_slot|
  t = TimeSlot.new
  t.name = time_slot
  t.save
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

Course.destroy_all

courses = [
{ name: "Web Development Immersive", description: "Build a work-ready skill set and fluency in full stack web development, develop a portfolio of projects individually and in small teams that are ready to present to employers, prepare for an internship or entry-level job as a junior web developer.", start_date: Date.new(2014,01,06).to_time.to_i, end_date: Date.new(2014,03,28).to_time.to_i},
{ name: "Front End Web Development", description: "Design and code beautiful, interactive client-facing websites, program websites in HTML, CSS and JavaScript and master the technical vocabulary to communicate your ideas to your teammates and other stakeholders", start_date: DateTime.new(2014,02,18), end_date: DateTime.new(2014,04,24)},
{ name: "Social Strategy for Brands", description: "Learn key techniques for identifying unique cultural opportunities to connect with consumers and their culture. Learn how some of the best brands achieve the social pull they have through case studies.", start_date: DateTime.new(2014,3,8), end_date: DateTime.new(2014,3,8)},
{ name: "Getting Started With Github", description: "From the fundamentals of version control to publishing your first project, you’ll learn everything you need to know about GitHub and how it works in this class.", start_date: DateTime.new(2014,2,20), end_date: DateTime.new(2014,2,20)},
{ name: "Data Science", description: "Applying your math and programming skills to make meaning out of large data sets. Learning how to analyze and manipulate data with Python. Learning how to make predictions about data using fundamental modeling techniques that will help you make better informed business decisions.", start_date: DateTime.new(2014,4,8), end_date: DateTime.new(2014,6,24)},
{ name: "Product Management", description: "Understand your users and analyze the market to build a product that is both desirable and viable. Create a product roadmap. Create a roadmap and effectively manage communication with all stakeholders. Develop metrics to measure success. Develop metrics to measure your success and make tough decisions.", start_date: DateTime.new(2014,3,24), end_date: DateTime.new(2014,6,9)},
{ name: "User Experience Design Immersive", description: "Apply fundamental UX skills to several hands-on projects in order to build up your design portfolio. Create a UX portfolio. Learn from and connect with some of the top UX practitioners in the field, from guest speakers to your instructional team. Work with stakeholders on design concepts. Prepare for an internship or entry-level job as a junior user experience designer.", start_date: DateTime.new(2014,3,3), end_date: DateTime.new(2014,5,9)}
]

courses.each do |course|
  c = Course.create name: course[:name], description: course[:description]
  c.time_slot = TimeSlot.first
  c.classroom = Classroom.find_by_name("Medium")
  c.save
end
