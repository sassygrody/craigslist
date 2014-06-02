# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  Category.create({:name => Faker::Lorem.word, :description => Faker::Lorem.sentence(word_count = 6)})
end


30.times do
  Post.create({:category_id => [*1..10].sample, :email => Faker::Internet.email, :price => Faker::Commerce.price , :description => Faker::Lorem.sentence(word_count = 24), :title => Faker::Lorem.sentence(word_count = 8), :key=> SecureRandom.hex(3)})
end
