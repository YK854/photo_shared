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
		@user_followers = user_followers.followers
		# フォローユーザ取得
		user_followings = User.find(params[:user_id])
		@user_followings = user_followings.followings

  end
end
