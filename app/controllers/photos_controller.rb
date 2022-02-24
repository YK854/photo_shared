class PhotosController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end

  def index
    # タグをクリックした場合の分岐
    if params[:tag_name]
      @tag_exists = "OK"
      flash.now[:info] = "「#{params[:tag_name]}」タグの絞り込みを行いました"
      @photos = Photo.tagged_with("#{params[:tag_name]}")
      @photo_new = @photos.page(params[:photo]).order("created_at DESC").per(6)
    else
      # 通常、投稿一覧はこの内容を実行
      @photos = Photo.includes(:user)
      @photo_new = @photos.page(params[:photo]).order("created_at DESC").per(6)
      # いいね上位
      photo_like = Photo.find(Favorite.group(:photo_id).order("count(photo_id) DESC").limit(3).pluck(:photo_id))
      @photo_like_active = photo_like.first
      @photo_like = photo_like.last(2)
      # コメント上位
      photo_comment = Photo.find(Comment.group(:photo_id).order("count(photo_id) DESC").limit(3).pluck(:photo_id))
      @photo_comment_active = photo_comment.first
      @photo_comment = photo_comment.last(2)
    end

		# サイドバー表示
		@user_all = User.includes(:photos)
		@users = @user_all.page(params[:side_user]).order("created_at DESC").per(8)
    if user_signed_in?
      followings = current_user.followings
      @user_followings = followings.page(params[:side_followings]).order("created_at DESC").per(8)
      followers = current_user.followers
      @user_followers = followers.page(params[:side_followers]).order("created_at DESC").per(8)
    end
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    flash.now[:info] = "ログイン済みユーザーのみ「コメント返信」「いいね」が行えます" unless user_signed_in?

		# サイドバー表示
		@user_all = User.includes(:photos)
		@users = @user_all.page(params[:side_user]).order("created_at DESC").per(8)
    if user_signed_in?
      followings = current_user.followings
      @user_followings = followings.page(params[:side_followings]).order("created_at DESC").per(8)
      followers = current_user.followers
      @user_followers = followers.page(params[:side_followers]).order("created_at DESC").per(8)
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
    flash.now[:info] = "投稿の削除に成功しました"
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :title, :description, :tag_list)
  end

end
