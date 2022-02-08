class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
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
    @photo = Photo.find(params[id])
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :title, :description, :tag_list)
  end

end
