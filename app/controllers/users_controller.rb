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
            flash[:notice] = "You have successfully updated your information!"
            # Handle a successful update.
             redirect_to user_path(@user) 
              
        else
            flash[:errors] = @user.errors.full_messages
            render 'edit'
        end
    end

    def destroy
        if logged_in?
            @user = User.find_by_id(params[:id])
            if @user == current_user
              @user.destroy!
              redirect_to root
            else
              redirect '/login'
            end
        end
    end

    private

    def strong_params
        params.require(:user).permit(:name, :email, :password, :age)
    end


end
