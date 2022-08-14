class ApplicationController < ActionController::Base

    private 

    def current_user
        @_current_user ||= session[:curr_user_id] && User.find_by(id: session[:curr_user_id])
    end
end
