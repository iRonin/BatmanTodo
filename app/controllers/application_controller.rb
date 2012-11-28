class ApplicationController < ActionController::Base
  before_filter :ensure_authenticated

  helper_method :current_user

  def ensure_authenticated
    if (session[:user_id].blank? && params[:api_key].blank?) || (session[:user_id].present? && !User.exists?(session[:user_id])) || (params[:api_key].present? && !User.exists?(api_key: params[:api_key]))
      session[:redirect] = request.fullpath
      redirect_to(login_path)
    end
  end

  def index
    
  end

  def current_user
    return nil unless session[:user_id].present? || params[:api_key].present?
    @current_user ||= if session[:user_id]
      User.find(session[:user_id])
    else
      User.where(api_key: params[:api_key]).first
    end
  end
end
