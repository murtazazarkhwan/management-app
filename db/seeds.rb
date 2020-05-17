# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Team.destroy_all
Project.destroy_all

Project.create(title: 'Chat Application', discription: 'A chat app for live messages.')
Project.create(title: 'Management app', discription: 'Management app description...')

User.create(email: 'admin@example.com',
            first_name: 'admin',
            last_name: 'user',
            password: 'password',
            admin: true
)

(0..3).each.with_index(1) do |n, index|
  User.create(email: "User#{index}@example.com",
              first_name: "User#{index}",
              last_name: "Doe#{index}",
              password: 'password'
  )
end

(0..3).each.with_index(4) do |n, index|
  User.create(email: "User#{index}@example.com",
              first_name: "User#{index}",
              last_name: "Doe#{index}",
              password: 'password'
  )
end

(0..3).each.with_index(8) do |n, index|
  User.create(email: "User#{index}@example.com",
              first_name: "User#{index}",
              last_name: "Doe#{index}",
              password: 'password'
  )
end

Team.create(title: 'Development Team', discription: 'This is development team.', leader_id: User.first.id)
Team.create(title: 'Support Team', discription: 'This is Support Team.', leader_id: User.third.id)
Team.create(title: 'Customer Service Team', discription: 'This is Customer Service Team.', leader_id: User.fourth.id)

User.first.update(team_id: Team.first.id)