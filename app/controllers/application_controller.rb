class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    add_flash_types :notice, :error

   private

   def current_user
        @user = User.find_by_id(session[:user_id])
   end

   def logged_in?
        !!current_user
   end

   
    
end
