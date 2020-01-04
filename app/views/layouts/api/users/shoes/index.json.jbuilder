# json.shoes do #add shoes to payload
#     @shoes.each do |shoe|
#         json.set! shoe.id do
#             json.extract! shoe, :id, :model, :gender, :color, :material, :size, :price

#             if shoe.photo.attached? #if shoe has photo attached, show shoe img
#                 json.photoUrl url_for(shoe.photo)
#             end
#         end
#     end
# end

json.shoes do
    @shoes.each do |shoe|
        photos_array = shoe.shoe_photos.map { |photo| url_for(photo) }
        json.set! shoe.id do
            json.extract! shoe, :id, :model, :gender, :color, :material, :size, :price
            
            json.shoePhotos { json.array! photos_array }
        end 
    end
end 

