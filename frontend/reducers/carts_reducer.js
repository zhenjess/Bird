import { POST_TO_CART, REMOVE_FROM_CART } from '../actions/cart_actions';

const cartsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let newState;
    switch (action.type) {
        case POST_TO_CART:
            newState = Object.assign({}, oldState, action.order);
            return newState;
        case REMOVE_FROM_CART:
            newState = Object.assign({}, oldState);
            delete newState[`${action.id}-${action.size}`];
            return newState;
        default:
            return oldState;
    }
};

export default cartsReducer;