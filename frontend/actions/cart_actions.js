import * as APIUtil from '../util/cart_api_util';

//action creators
export const POST_TO_CART = "POST_TO_CART";
export const REMOVE_FROM_CART = "REMOVE_FROM_CART";

const postToCart = (payload) => {
    return ({
        type: POST_TO_CART,
        order: payload
    });
};

function receiveOrders(shoe, size) {
    let state = Object.assign({}, shoe, { size });
    let key = `${shoe.id}-${size}`;
    return ({
        [key]: state
    });
}

const removeCartOrder = (id, size) => {
    return ({
        type: REMOVE_FROM_CART,
        id,
        size
    });
};

export const addToCart = (order, size) => dispatch => {
    const payload = receiveOrders(order, size);
    function _func(payload) {
        return dispatch(postToCart(payload));
    }
    return _func(payload);
};



export const removeFromCart = (id, size) => dispatch => {
    function _func(id, size) {
        return dispatch(removeCartOrder(id, size));
    }
    return _func(id, size);
}