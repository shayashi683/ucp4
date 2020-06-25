# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

2.times do |index| 
    Category.create(:category_name => "カテゴリー#{index}", :intro => "イントロ#{index}")
end

4.times do |index| 
    College.create(:college_name => "大学#{index}", :college_type => "国立")
end

4.times do |index| 
    Faculty.create(:faculty_name => "学部#{index}")
end

