class ApplicationController < ActionController::API
  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:pseudo, :email, :password, :password_confirmation, :current_password)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:pseudo, :email, :password, :password_confirmation, :current_password)
    end
  end

  private

  def check_admin
    unless current_user.admin?
      render json: { error: "accès refusé" }, status: :unauthorized
    end
  end
end
