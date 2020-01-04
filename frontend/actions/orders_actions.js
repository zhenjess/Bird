import * as APIUtil from '../util/orders_api_util';

export const RECEIVE_ORDER = "RECEIVE_ORDER";

export const REMOVE_ORDER = "REMOVE_ORDER";

//order action creators

const receiveOrder = (response) => {
    return ({
        type: RECEIVE_ORDER,
        order: response.orders
    });
};

const removeOrder = (response) => {
    return ({
        type: REMOVE_ORDER, 
        orderId: Object.keys(response.orders)
    });
};

//thunk order action creators

//create, update, remove user's order
export const createOrder = (user, order) => dispatch => {
    return APIUtil.createOrder(user, order)
        .then(response => dispatch(receiveOrder(response)));
}

export const updateOrder = (user, order) => dispatch => {
    return APIUtil.updateOrder(user, order) 
        .then(response => dispatch(receiveOrder(response)));
}

export const removeOrder = (user, order) => dispatch => {
    return APIUtil.removeOrder(user, order) 
        .then(response => dispatch(removeOrder(response)));
}

