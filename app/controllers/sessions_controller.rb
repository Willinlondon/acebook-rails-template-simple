class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email])
    p params[:email]
      if user.present? && user.authenticate(params[:password])    
        session[:user_first_name] = user.first_name
        session[:user_last_name] = user.last_name
        session[:user_id] = user.id
        redirect_to posts_path, notice: "Logged in successfully as #{session[:user_first_name]}"
      else
        flash.now[:alert] = 'Invalid email or password'
        render :new
      end
  end

  def destroy

  end

end
