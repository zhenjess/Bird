import * as APIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';

const receiveCurrentUser = currentUser => ({
    type: RECEIVE_CURRENT_USER,
    currentUser
});

const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER
});

const receiveSessionErrors = (errors) => ({
    type: RECEIVE_SESSION_ERRORS,
    errors
});

export const signup = (user) => dispatch => {
    return (
        APIUtil.signup(user)
            .then(currentUser => dispatch(receiveCurrentUser(currentUser)),
                error => dispatch(receiveSessionErrors(error.responseJSON))
            )
    );
};

export const login = (user) => dispatch => {
    return (
        APIUtil.login(user)
            .then(currentUser => dispatch(receiveCurrentUser(currentUser)),
                error => dispatch(receiveSessionErrors(error.responseJSON))
            )
    );
};

export const logout = () => dispatch => {
    return (
        APIUtil.logout()
            .then(user => dispatch(logoutCurrentUser(user)))
    );

};