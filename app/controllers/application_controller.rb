class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

#This method will tell us the currently signed_in User
  def current_user
    #This increases the efficiency by not hitting the database evertime to find the User
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #memoization logical OR operator
  end

  def logged_in?
    !!current_user
  end
end
