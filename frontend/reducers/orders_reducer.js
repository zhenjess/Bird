import { RECEIVE_ORDER } from '../actions/orders_actions';
const ordersReducer = (oldState={}, action) => {
    Object.freeze(oldState);
    
    let newState;
    switch(action.type) {
        case RECEIVE_ALL_SHOES:
            return action.payload.orders;
        case RECEIVE_ORDER:
            newState = Object.assign({}, oldState, action.orders);
            return newState;
        default:
            return oldState;
    }
};

export default ordersReducer;