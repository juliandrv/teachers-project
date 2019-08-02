class ApplicationController < ActionController::Base
	before_action :add_parameters_to_user, if: :devise_controller?
	before_action :avatar

	protected

		def add_parameters_to_user
			devise_parameter_sanitizer.permit(:sign_up, keys: [:city_id, :role])
			devise_parameter_sanitizer.permit(:account_update, keys: [:city_id, :role])
		end

		def avatar
			@avatar = user_signed_in? ? current_user.avatar_url : nil
		end

end
