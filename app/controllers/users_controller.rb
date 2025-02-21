class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end
  def show
    @user = User.find_by(id: params[:id])
    render :show
  end
  def create
    @user = User.create(
      username: params[:username],
      email: params[:email],
      password: params[:password]
    )
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      username: params[:username],
      emails: params[:email],
      password: params[:password]
    )
  end
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render JSON: "User removed from system"
  end
end
