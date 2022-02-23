class CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = current_user.comments.new(comment_params)
    @comment.photo_id = @photo.id
    if @comment.save
      @comment = Comment.new
      # サイドバー表示
      @user_all = User.all
  		@users = @user_all.page(params[:side_user]).order("created_at DESC").per(8)
      if user_signed_in?
        followings = current_user.followings
        @user_followings = followings.page(params[:side_followings]).order("created_at DESC").per(8)
        followers = current_user.followers
        @user_followers = followers.page(params[:side_followers]).order("created_at DESC").per(8)
      end

    else
      redirect_to photo_path(@photo)
      flash[:warning] = "コメントの返信に失敗しました"
    end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.find(params[:id])
    if @comment.destroy
      flash[:info] = "コメントを削除しました"

      # サイドバー表示
      @user_all = User.all
  		@users = @user_all.page(params[:side_user]).order("created_at DESC").per(8)
      if user_signed_in?
        followings = current_user.followings
        @user_followings = followings.page(params[:side_followings]).order("created_at DESC").per(8)
        followers = current_user.followers
        @user_followers = followers.page(params[:side_followers]).order("created_at DESC").per(8)
      end

    else
      flash[:warning] = "コメントの削除に失敗しました"
      redirect_to photo_path(@photo)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:post_comment)
  end

end
