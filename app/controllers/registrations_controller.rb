class RegistrationsController < Devise::RegistrationsController

	public

	def sign_up_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :year_started, :year_ended, :organization)
	end

end