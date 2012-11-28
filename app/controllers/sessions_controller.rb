class SessionsController < ApplicationController
  skip_before_filter :ensure_authenticated, :except => :current

  respond_to :json
  
  def new
    redirect_to '/auth/twitter'
  end

  def create
    if auth = request.env['omniauth.auth']
      user = User.find_or_initialize_by_uid(auth['uid'].to_s)
      if user.new_record?
        user.nickname = auth['info']['nickname']
        user.save
      end
      session[:user_id] = user.id
      redirect_to session[:redirect] || '/'
    end
  end

  def current
    respond_with current_user
  end

  def failure
  end
end
