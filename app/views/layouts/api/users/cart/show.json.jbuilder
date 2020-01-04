@shoes = json.shoes do 
    @cart.shoes.each do |shoe|
        photos_array = shoe.shoe_photos.map { |photo| url_for(photo) }
        json.set! shoe.id do
            json.extract! shoe, :id, :model, :gender, :color, :material, :size, :price
            json.shoePhotos { json.array! photos_array }
        end
    end
end

shoes ||= {}

@orders = json.orders do
    @cart.orders.each do |order|
        if (@shoes["#{order.shoe_id}"])
            json.set! order.id do
                json.extract! order, :id, :shoe_id, :cart_id, :size, :quantity

                unitPrice = @shoes["#{order.shoe_id}"]["price"]
                orderPrice = (unitPrice * order.quantity)

                json.unitPrice unitPrice
                json.orderPrice orderPrice
            end 
        end
    end
end 

orders ||= {}

