class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_user # Makes it available in views too

   private
    # Look up the key `:current_user_id` in the session and use it to
    # find the current `User`. This is a common way to handle user login in
    # a Rails application; logging in sets the session value and
    # logging out removes it.
    def current_user
      puts User.find_by(id: session[:current_user_id])

      User.find_by(id: session[:current_user_id])
    end
end
