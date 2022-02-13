class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @photos = @user.photos.page(params[:page]).order("created_at DESC").per(3)
  end

  def edit
  end

  def update
  end
end
