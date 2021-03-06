# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create([
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 2, supplemental: true), img: Faker::Placeholdit.image,  tags: ['hope', 'test', 'life'], user_id: 1 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 4, supplemental: true), img: Faker::Placeholdit.image,  tags: ['hope', 'test'], user_id: 1 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 2, supplemental: true), img: Faker::Placeholdit.image,  tags: ['hope', 'fun', 'life'], user_id: 1 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 5, supplemental: true), img: Faker::Placeholdit.image,  tags: ['hope', 'life'], user_id: 1 }
])

User.create([
    {username: 'nawilliams95', password: 'Human_Nature2020', email: 'karri.bonez@gmail.com'}
])

puts 'Seeded Database'