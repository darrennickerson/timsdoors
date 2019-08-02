class ApplicationController < ActionController::Base
  helper ApplicationHelper  
  before_action :configure_permitted_parameters, if:  :devise_controller?
  def is_admin?
    
    if user_signed_in? && current_user.admin = true
        return true
    else
      redirect_to root_path
      flash[:notice] = "Page doesn't exist"
    end
  
end
    protected

    def configure_permitted_parameters
  
      devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :address, :address_two, :postal_code, :city, :province, :cell, :home, :fax, :admin])
      devise_parameter_sanitizer.permit(:account_update, keys: [:f_name, :l_name, :address, :address_two, :postal_code, :city, :province, :cell, :home, :fax, :admin])
    end
    
    end
