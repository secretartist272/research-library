class SessionsController < ApplicationController
    #user signup
    def signup
        @user = User.new
    end

    #create user
    def create
        @user = User.new(strong_params)


        if @user.save
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
        #find user
        @user = User.find_by(email: params[:user][:email])

        #if user is found
        if @user && @user.authenticate(strong_params[:password])
            flash[:notice] = "You have successfully logged in"
            session[:user_id] = @User.id
            reddirect_to root_path
        #if user isn't found
        else
            flash[:errors] = @user.errors.full_messages
            @user = User.new(username: strong_params[:username]
            render :login
        end
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