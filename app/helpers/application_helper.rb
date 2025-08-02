module ApplicationHelper
    def admin?
      current_user&.role == "admin"
    end

    def authenticated?
      current_user.present?
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
end
