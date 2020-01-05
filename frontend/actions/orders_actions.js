import * as APIUtil from '../util/orders_api_util';

export const RECEIVE_ORDERS = "RECEIVE_ORDERS";

export const RECEIVE_ORDER = "RECEIVE_ORDER";

// export const REMOVE_ORDER = "REMOVE_ORDER";

//order action creators

const fetchShoeOrders = orders => {
    return ({
        type: RECEIVE_ORDERS,
        orders: orders
    });
};

const receiveOrder = (response) => {
    return ({
        type: RECEIVE_ORDER,
        order: response.orders
    });
};

// const removeOrder = (response) => {
//     return ({
//         type: REMOVE_ORDER, 
//         orderId: Object.keys(response.orders)
//     });
// };

//thunk order action creators

//create, update, remove user's order
export const fetchOrders = (id) => (dispatch) => (
    receiveShoeOrders(id)
        .then(orders => dispatch(fetchShoeOrders(orders)))
);

export const createShoeOrder = (orderId, gender) => dispatch => {
    return ApiUtil.createShoeOrder(orderId, gender)
        .then(response => dispatch(receiveOrder(response)));
}

export const updateShoeOrder = (orderId, gender) => dispatch => {
    return ApiUtil.updateShoeOrder(orderId, gender)
        .then(response => dispatch(receiveOrder(response)));
}







// export const removeOrder = (user, order) => dispatch => {
//     return APIUtil.removeOrder(user, order) 
//         .then(response => dispatch(removeOrder(response)));
// }

export const RECEIVE_ITEMS = "RECEIVE_ITEMS";

const fetchShoeItems = items => {
    return ({
        type: RECEIVE_ITEMS,
        items: items
    });
};

export const fetchItems = (id) => (dispatch) => (
    receiveShoeItems(id)
        .then(items => dispatch(fetchShoeItems(items)))
);


