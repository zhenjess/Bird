
export const receiveShoeOrders = (gender) => {
    $.ajax({
        method: 'GET', 
        url: `api/orders/${gender}`
    })
};

export const createShoeOrder = (orderId, gender) => {
    $.ajax({
        method: 'POST', 
        url: `api/orders/${orderId}/shoes/${gender}`
    })
};

export const updateShoeOrder = (orderId, gender) => {
    $.ajax({
        method: 'PATCH',
        url: `api/orders/${orderId}/shoes/${gender}`
    })
};

