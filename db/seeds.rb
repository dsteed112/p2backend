Event.destroy_all
User.destroy_all

user1 = User.create(name: "Ahmed", password: "Ahmed")

event1 = Event.create(happening: "Dentist Appt", location: "Cool Smilez", time: 1300, user: user1)
event2 = Event.create(happening: "Teach", location: "Flatiron Campus", time: 1000, user: user1)
event3 = Event.create(happening: "Oil Change", location: "Jiffy Lube", time: 1500, user: user1)

