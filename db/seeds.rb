# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Shoe.destroy_all
Order.destroy_all

demoLogin = User.create!(first_name: "all", last_name: "birds", email: 'allbirds@gmail.com', password: "password")

shoe_1 = Shoe.create!(model: 'Runners', gender: 'women', color: 'Black', material: 'Wool', price: 95)

 filename = "#{shoe_1.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_1.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)
        # order = Order.create!(shoe_id: shoe.id, size: 8, price: 95)

shoe_2 = Shoe.create!(model: 'Runners', gender: 'men', color: 'Black', material: 'Wool', price: 95)

 filename = "#{shoe_2.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_2.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

shoe_3 = Shoe.create!(model: 'Runners', gender: 'women', color: 'Black', material: 'Tree', price: 95)

 filename = "#{shoe_3.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_3.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

shoe_4 = Shoe.create!(model: 'Runners', gender: 'men', color: 'Black', material: 'Tree', price: 95)

 filename = "#{shoe_4.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_4.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

shoe_5 = Shoe.create!(model: 'Loungers', gender: 'women', color: 'Grey', material: 'Wool', price: 95)

 filename = "#{shoe_5.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_5.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

shoe_6 = Shoe.create!(model: 'Loungers', gender: 'men', color: 'Grey', material: 'Tree', price: 95)

 filename = "#{shoe_6.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_6.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

shoe_7 = Shoe.create!(model: "Skippers", gender: 'women', color: 'White', material: 'Tree', price: 95)

 filename = "#{shoe_7.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_7.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

shoe_8 = Shoe.create!(model: "Toppers", gender: 'men', color: 'White', material: 'Tree', price: 95)
 filename = "#{shoe_8.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_8.model.downcase}.webp"
        #p filename
        file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
        shoe.photo.attach(io: file, filename: filename)

# wool = Shoe.create!(material: 'Wool');
# tree = Shoe.create!(material: 'Tree');

# grey = Shoe.create!(color: 'Grey');
# black = Shoe.create!(color: 'Black');
# white = Shoe.create!(color: 'White');
# red = Shoe.create!(color: 'Red');
# green = Shoe.create!(color: 'Green');
# blue = Shoe.create!(color: 'Blue');

# shoe_1 = Shoe.create!(gender: 'Men', model: 'Runners', size: 8, price: 95)

# shoe_1_colors = [grey, black, white, red, green, blue];
# shoe_1_materials = [wool];

# shoe_1_colors.each do |color|
#     shoe_1_materials.each do |material|
#         shoe_option = ShoeOption.create!(shoe_id: shoe_1.id, color_id: color.id, material_id: material.id)
#         filename = "#{shoe_1.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_1.model.downcase}.webp"
#         #p filename
#         file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
#         shoe_option.photo.attach(io: file, filename: filename)
#         item = Item.create!(shoe_option_id: shoe_option.id, size: 8, price: 95)
#         #item.photo.attach(io: file, filename: filename)
#     end
# end


# shoe_2 = Shoe.create!(gender: 'Men', model: 'Runners')
# # shoe_1.material_ids = [wool.id, tree.id];
# # shoe_1.color_ids = all_color_ids;
# shoe_2_colors = [grey, black, white, red, green, blue];
# shoe_2_materials = [tree]; #,tree

# shoe_2_colors.each do |color|
#     shoe_2_materials.each do |material|
#         shoe_option = ShoeOption.create!(shoe_id: shoe_2.id, color_id: color.id, material_id: material.id)
#         filename = "#{shoe_2.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_2.model.downcase}.webp"
#         # p filename
#         file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
#         shoe_option.photo.attach(io: file, filename: filename)
#         item = Item.create!(shoe_option_id: shoe_option.id, size: 8, price: 95)
#     end
# end

# shoe_3 = Shoe.create!(gender: 'Men', model: 'Loungers')
# # shoe_1.material_ids = [wool.id, tree.id];
# # shoe_1.color_ids = all_color_ids;
# shoe_3_colors = [grey, black, red, blue];
# shoe_3_materials = [wool]; #,tree

# shoe_3_colors.each do |color|
#     shoe_3_materials.each do |material|
#         shoe_option = ShoeOption.create!(shoe_id: shoe_3.id, color_id: color.id, material_id: material.id)
#         filename = "#{shoe_3.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_3.model.downcase}.webp"
#         # p filename
#         file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
#         shoe_option.photo.attach(io: file, filename: filename)
#         item = Item.create!(shoe_option_id: shoe_option.id, size: 8, price: 95)
#     end
# end

# shoe_4 = Shoe.create!(gender: 'Men', model: 'Loungers')
# # shoe_1.material_ids = [wool.id, tree.id];
# # shoe_1.color_ids = all_color_ids;
# shoe_4_colors = [grey, black, white, red, green, blue];
# shoe_4_materials = [tree]; #,tree

# shoe_4_colors.each do |color|
#     shoe_4_materials.each do |material|
#         shoe_option = ShoeOption.create!(shoe_id: shoe_4.id, color_id: color.id, material_id: material.id)
#         filename = "#{shoe_4.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_4.model.downcase}.webp"
#         # p filename
#         file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
#         shoe_option.photo.attach(io: file, filename: filename)
#         item = Item.create!(shoe_option_id: shoe_option.id, size: 8, price: 95)
#     end
# end

# shoe_5 = Shoe.create!(gender: 'Men', model: 'Skippers')
# # shoe_1.material_ids = [wool.id, tree.id];
# # shoe_1.color_ids = all_color_ids;
# shoe_5_colors = [grey, black, white, red, green, blue];
# shoe_5_materials = [tree]; #,tree

# shoe_5_colors.each do |color|
#     shoe_5_materials.each do |material|
#         shoe_option = ShoeOption.create!(shoe_id: shoe_5.id, color_id: color.id, material_id: material.id)
#         filename = "#{shoe_5.gender.downcase}_#{color.color.downcase}_#{material.material.downcase}_#{shoe_5.model.downcase}.webp"
#          #debugger
#          #p filename
#         file = open("https://birds-seeds.s3-us-west-1.amazonaws.com/#{filename}")
#         shoe_option.photo.attach(io: file, filename: filename)
#         item = Item.create!(shoe_option_id: shoe_option.id, size: 8, price: 95)
#     end
# end
