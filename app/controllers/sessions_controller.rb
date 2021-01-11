class SessionsController < ApplicationController
    #user signup
    def signup
        @user = User.new
    end

    #create user
    def create
        @user = User.new(stong_params)


        if user.save
            flash[:notice] = "Safely created User account"
            sessions[:user_id] = @user.id
            redirect_to research_path
        else 
            flash[:errors] = @user.errors.full_messages
            render :signup
        end
        
    end

    #user login
    def login
        @user = User. new 
    end

    def new

    end

     #homepage
    def home
        render "homepage"
    end

    #logout 
    def logout
        sessions.clear
        reedirect_to home_path
    end

    private

    def strong_params
        params.require(:user).permit(:name, :email, :password, :age)
    end

end