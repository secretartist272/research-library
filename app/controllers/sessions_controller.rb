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
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            flash[:errors] = @user.errors.full_messages
            render :signup
        end
        
    end

    #user login
    def login
        @user = User. new 
    end


    #user login post
    def new
        #find user
        @user = User.find_by(email: params[:user][:email])
        

        #if user is found
        if @user && @user.authenticate(strong_params[:password])
            flash[:notice] = "You have successfully logged in"
            session[:user_id] = @user.id
            
            redirect_to user_path(@user)
        #if user isn't found
        else
            @user = User.new(email: strong_params[:email])
            flash[:errors] = @user.errors.full_messages
            render :login
        end
    end

     #homepage
    def home
        render "homepage"
    end

    #logout 
    def logout
        session.clear
        redirect_to root_path
    end

    def omniauth
        @user = User.from_omniauth(auth)
        @user.save
        #binding.pry
        session[:user_id] = @user.id
        redirect_to user_path(@user)
        
    end

    private

    def strong_params
        params.require(:user).permit(:name, :email, :password, :age)
    end
    
    def auth
        request.env['omniauth.auth']
    end

end