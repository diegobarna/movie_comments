class UsersController < ApplicationController
  before_action :set_user, only: :show

  def login
    @user = User.find_by(username: params[:username])
    if @user[:password] == params[:password]
      session[:user_id] = @user.id
      redirect_to users_path(@user[:id])
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def logout
    session[:user_id] = nil
  end

  def show
    @comments = Comment.where('username = ?', @user.username)
  end

  private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
