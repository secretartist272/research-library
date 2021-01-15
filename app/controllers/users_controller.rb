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
        @user = User.find_by(params[:id])
       # binding.pry
        if @user.update_attributes(strong_params)
            # Handle a successful update.
             redirect_to user_path(@user) 
              
        else
              render 'edit'
        end
    end


end
