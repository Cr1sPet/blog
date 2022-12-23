# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "adm@adm.in", name: 'admin', role: 'admin', password: 'admin1', password_confirmation: 'admin1')


User.create(email: "us@us.er", name: 'nick', role: 'user', password: '1qa2ws', password_confirmation: '1qa2ws')

User.create(email: "au@auth.or", name: 'bob', role: 'author', password: '1qa2ws', password_confirmation: '1qa2ws')


