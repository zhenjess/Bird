import { combineReducers } from "redux";

import usersReducer from './users_reducer';

import shoesReducer from './shoes_reducer';

import ordersReducer from './orders_reducer';

import cartsReducer from './carts_reducer';


const entitiesReducer = combineReducers({
    users: usersReducer,
    shoes: shoesReducer,
    orders: ordersReducer,
    carts: cartsReducer
});

export default entitiesReducer; //represents data from db and manages it
//then delegates tasks to each reducer