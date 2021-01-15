class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

   private

   def current_user
        @user = User.find_by_id(session[:user_id])
   end

   def logged_in?
        !!current_user
   end

   def strong_params
        params.require(:user).permit(:name, :email, :password, :age)
   end
    
end
