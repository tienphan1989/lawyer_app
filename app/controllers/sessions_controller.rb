class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email])
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)
  # else
  #   flash.now[:danger] = 'Invalid email/password combination'
  #   render 'new'
  # end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
