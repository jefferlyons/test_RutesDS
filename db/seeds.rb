# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Familia Effer' , email:'Effer@email.com', dir: 'Cl 76 #32-198' , phone: '30070')
User.create(username: 'Familia Lyons' , email:'Lyons@email.com' , dir: 'Cl 76 #35b-90' , phone: '30067')

Student.create(name:'Jose Effer', dir_school: 'Cl 88 #43-123' , user_id: '1' )
Student.create(name:'Juan Effer', dir_school: 'Cl 88 #43-123' , user_id: '1' )
Student.create(name:'Juan Lyons', dir_school: 'Cl 88 #43-123' , user_id: '2' )