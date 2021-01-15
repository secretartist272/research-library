class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def show

    end

    def edit
       @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
       # binding.pry
        if @user.update(params[:user][:id])
            # Handle a successful update.
             redirect_to user_path(@user) 
              
        else
              render 'edit'
        end
    end


end
