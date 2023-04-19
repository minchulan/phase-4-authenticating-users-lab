class SessionsController < ApplicationController
    def create 
        # find a user in the DB using the username from params 
        user = User.find_by(username: params[:username])
        # save the user's id to the session hash'
        session[:user_id] = user.id
        # return the logged in user as a JSON object
        render json: user 
    end 

    def destroy 
        #delete the user id from the session hash
        session.delete :user_id
        # return an empty response with  a 204 No Content status code
        head :no_content 
    end 
end
