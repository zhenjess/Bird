class Api::SessionsController < ApplicationController 
    def create #creates user
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if @user
            login(@user) #show user if logged in else render error
            render "api/users/show"
        else
            render json: ["Invalid email/password combination"], status: 401
        end
    end

    def destroy
        @user = current_user
        if @user #destroy user if user logged out
            logout
            render "api/users/show"
        else 
            render json: ["No current user"], status: 404
        end
    end
end