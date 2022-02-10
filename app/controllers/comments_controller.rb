class CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = current_user.comments.new(comment_params)
    @comment.photo_id = @photo.id
    if @comment.save
      redirect_to photo_path(@photo)
    else
      redirect_to photo_path(@photo)
      flash[:warning] = "コメントの返信に失敗しました"
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:post_comment)
  end

end
