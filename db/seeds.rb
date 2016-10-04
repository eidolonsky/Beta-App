# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Team.destroy_all

(1..5).each do |t|
  team = Team.create(name: "Fantasy ##{t}", manager: "Manager ##{t}")
  (1..10).each do |p|
    player = Player.create(name: "Player ##{p}", goals: "5", assists: "10")
  end
end