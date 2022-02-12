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
    @photos = @q_header.result(distinct: true).page(params[:page]).order("created_at DESC").per(3)
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    flash.now[:info] = "ログイン済みユーザーのみ「コメント返信」「いいね」が行えます" unless user_signed_in?
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
    flash[:success] = "投稿の削除に成功しました"
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :title, :description, :tag_list)
  end

  def search_params
    params.require(:q).permit(:sorts)
  end

end
