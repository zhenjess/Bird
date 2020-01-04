json.orders do 
    @orders.each do |order|
        json.set! order.id do 
            json.extract! order, :quantity
        end
    end
end