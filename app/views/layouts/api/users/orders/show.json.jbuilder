unitPrice = @shoe['price']
orderPrice = (unitPrice * @order.quantity)

json.orders do
    json.set! @order.id do
        json.extract! @order, :id, :quantity, :shoe_id

        json.unitPrice unitPrice
        json.orderPrice orderPrice
    end
end
