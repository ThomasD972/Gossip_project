# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Gossip.destroy_all
Tag.destroy_all
City.destroy_all

cities = []
10.times do
  cities << City.create(
        name: Faker::Games::Zelda.location,
        zip_code: Faker::Number.number(digits: 6)
  )
end

users = []
10.times do
  users << User.create(
      first_name: Faker::Ancient.hero, 
      last_name: Faker::JapaneseMedia::DragonBall.character,
      description: Faker::Lorem.sentence,
      email: Faker::Internet.email,
      age: Faker::Number.between(from: 15, to: 99),
      city: cities.sample
  )
end

gossips = []
20.times do
    gossips << Gossip.create(
        title: Faker::Superhero.name,
        content: Faker::Lorem.sentence,
        user: users.sample
        
    )
  end
  
tags = []
  10.times do
    tags << Tag.create(
          title: Faker::Space.galaxy
      )
  end

  add_gossips = []
  15.times do 
    add_gossips << AddGossip.create(
        gossip: gossips.sample,
        tag: tags.sample
    )
  end






