
# json.extract! @shoe, :id, :model, :gender, :color, :material, :size, :price

# json.photoUrls @shoe.photos.map { |file| url_for(file) }

json.partial! 'api/shoes/shoe', shoe: @shoe