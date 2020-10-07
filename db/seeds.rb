# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
    { username: "Mamichev", first_name: "Svetlana", last_name: "Ochotnikova", email: "mamichev@gus.ua", password: "123456" },
    { username: "Lama", first_name: "Arina", last_name: "Ochotnikova", email: "lama@gus.ua", password: "123456" },
    { username: "Ptiptenka", first_name: "Vania", last_name: "Ochotnikov", email: "ptiptenka@gus.ua", password: "123456" },
    { username: "Babushka", first_name: "Tatiana", last_name: "Biakiseva", email: "babushka@gus.ua", password: "123456" },
])