class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @category = Category.all


  before_action :configure_permitted_parameters, if: :devise_controller?



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :image, :gender, :last_name, :username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :image, :gender, :last_name, :username])

  end

  def after_sign_in_path_for(resource)
    user_path(current_user) #your path
  end

  def after_sign_up_path_for(resource)
    user_path(current_user) #your path
  end
end
