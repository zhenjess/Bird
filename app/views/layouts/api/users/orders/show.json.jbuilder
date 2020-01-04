unitPrice = @shoe['price']
shoePrice = (unitPrice * @order.quantity)

json.orders do
    json.set! @order.id do
        json.extract! @order, :id, :quantity, :shoe_id
        json.unitPrice unitPrice
        json.shoePrice shoePrice
    end
end
