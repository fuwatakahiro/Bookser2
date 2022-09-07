class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 
  def after_sign_in_path_for(resouce)
    user_path(current_user)
  end
  def after_sign_out_path_(resouce)
    root_path
  end 
  
  

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email]) # 注目
    end

end
