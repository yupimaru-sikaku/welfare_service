class ServicesController < ApplicationController

    def index
    end

    def admin_index
        if user_signed_in?
            if current_user.admin?
            else
                redirect_to admin_request_users_path
            end
        else
            redirect_to new_user_registration_path
        end
    end
    
end
