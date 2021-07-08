module ApplicationHelper
  def gravatar_for(user, options = {size: 80})
    # get the email from URL-parameters or what have you and make lowercase
    email_address = user.email.downcase
    # create the md5 hash
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end

#This method will tell us the currently signed_in User
  def current_user
    #This increases the efficiency by not hitting the database evertime to find the User
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #memoization logical OR operator
  end

  def logged_in?
    !!current_user
  end
end
