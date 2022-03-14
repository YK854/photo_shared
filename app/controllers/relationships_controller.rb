class RelationshipsController < ApplicationController
  before_action :authenticate_user!

	def create
		current_user.follow(params[:user_id])
		redirect_to request.referer
	end

	def destroy
		current_user.unfollow(params[:user_id])
		redirect_to request.referer
	end

  def connection
  	# フォロワーユーザ取得
	user_followers = User.find(params[:user_id])
	@user_followers = user_followers.followers.page(params[:side_followers]).order("created_at DESC").per(5)
	# フォローユーザ取得
	user_followings = User.find(params[:user_id])
	@user_followings = user_followings.followings.page(params[:side_followings]).order("created_at DESC").per(5)
  end
end
