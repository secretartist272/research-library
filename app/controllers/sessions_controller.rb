class SessionsController < ApplicationController
    #user signup
    def signup
        @user = User.new
    end

    #create user
    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to '/'
        else 
            redirect_to '/signup'
        end
        
    end

    #user login
    def login

    end

     #homepage
    def home
        render "homepage"
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :age)
    end

end