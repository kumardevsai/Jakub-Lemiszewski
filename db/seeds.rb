# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  require 'faker'
  User.delete_all
  Book.delete_all

  50.times.each do
      u = User.new
      u.name = Faker::Name.name
      u.email = Faker::Internet.email
      u.save!

    10.times.each do
       b =  Book.new
       b.author = u
       b.name = Faker::Book.title
       b.title = Faker::Book.title
       b.save
       u.books << b
       b.save
    end
   end



