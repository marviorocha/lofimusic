class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_params_permitted, if: :devise_controller?

  protected

  def set_params_permitted
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[full_name username email role])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[full_name username email role])
  end
end
