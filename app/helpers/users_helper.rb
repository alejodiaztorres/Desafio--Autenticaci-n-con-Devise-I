module UsersHelper
    def logged?
        
        if session[:user_id].present?
            true
        else
            false
        end
    end

    def current_users
        User.find(session[:user_id])
    end
end
