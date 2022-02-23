class FavoritesController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    favorite = @photo.favorites.new(user_id: current_user.id)
    favorite.save
    # redirect_to photo_path(photo)

    # サイドバー表示
    @user_all = User.all
		@users = @user_all.page(params[:side_user]).order("created_at DESC").per(8)
    if user_signed_in?
      followings = current_user.followings
      @user_followings = followings.page(params[:side_followings]).order("created_at DESC").per(8)
      followers = current_user.followers
      @user_followers = followers.page(params[:side_followers]).order("created_at DESC").per(8)
    end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    favorite = @photo.favorites.find_by(user_id: current_user.id)
    favorite.destroy
    # redirect_to photo_path(photo)

    # サイドバー表示
    @user_all = User.all
		@users = @user_all.page(params[:side_user]).order("created_at DESC").per(8)
    if user_signed_in?
      followings = current_user.followings
      @user_followings = followings.page(params[:side_followings]).order("created_at DESC").per(8)
      followers = current_user.followers
      @user_followers = followers.page(params[:side_followers]).order("created_at DESC").per(8)
    end
  end
end
