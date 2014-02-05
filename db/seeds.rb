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

time_slots = ["9am to 12pm", "2pm to 5pm" ,"6pm to 9pm"]

time_slots.each do |time_slot|
  t = TimeSlot.new
  t.name = time_slot
  t.save
end

Course.destroy_all

courses = [
{ name: "Web Development Immersive", description: "Build a work-ready skill set and fluency in full stack web development, develop a portfolio of projects individually and in small teams that are ready to present to employers, prepare for an internship or entry-level job as a junior web developer."},
{ name: "Front End Web Development", description: "Design and code beautiful, interactive client-facing websites, program websites in HTML, CSS and JavaScript and master the technical vocabulary to communicate your ideas to your teammates and other stakeholders"},
{ name: "Social Strategy for Brands", description: "Learn key techniques for identifying unique cultural opportunities to connect with consumers and their culture. Learn how some of the best brands achieve the social pull they have through case studies."},
{ name: "Getting Started With Github", description: "From the fundamentals of version control to publishing your first project, you’ll learn everything you need to know about GitHub and how it works in this class."},
{ name: "Data Science", description: "Applying your math and programming skills to make meaning out of large data sets. Learning how to analyze and manipulate data with Python. Learning how to make predictions about data using fundamental modeling techniques that will help you make better informed business decisions."},
{ name: "Product Management", description: "Understand your users and analyze the market to build a product that is both desirable and viable. Create a product roadmap. Create a roadmap and effectively manage communication with all stakeholders. Develop metrics to measure success. Develop metrics to measure your success and make tough decisions."},
{ name: "User Experience Design Immersive", description: "Apply fundamental UX skills to several hands-on projects in order to build up your design portfolio. Create a UX portfolio. Learn from and connect with some of the top UX practitioners in the field, from guest speakers to your instructional team. Work with stakeholders on design concepts. Prepare for an internship or entry-level job as a junior user experience designer"}
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
