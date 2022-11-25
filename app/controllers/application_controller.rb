class ApplicationController < ActionController::Base

     before_action :configure_permitted_parameters, if: :devise_controller?
	protected
	def after_sign_in_path_for(resource)
		case resource
		when User
             root_path
	    when Admin
	    	 admin_home_top_path
       end
	end
    def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end
end
