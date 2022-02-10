class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      redirect_to new_photo_path
    else
      render :new
    end
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
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

end
