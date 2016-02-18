class SessionsController < ApplicationController
  def create
  	@user = User.where(username: params[:username]).first
  		if @user && @user.authenticate(params[:password])
  			session[:user_id] = @user.id
  			redirect_to posts_path
  		else
  			redirect_to log_in_path
  		end
  end

  def destroy
  	session.clear
  	redirect_to log_in_path
  end
end
