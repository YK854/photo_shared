class SearchesController < ApplicationController

	def search
		# フォームから必要な情報取得
		@model = params[:model]
		@content = params[:content]
		@method = params[:method]
		# ユーザー/投稿写真か条件分岐
		if @model == "user"
			# 検索結果
			@records_all = User.search_for(@content, @method)
			@records = @records_all.page(params[:side_user]).order("created_at DESC").per(6)

			@user_all = User.all
			@photos = Photo.all
    	@photo_new = @photos.page(params[:photo]).order("created_at DESC").per(6)
		else
			# 検索結果
			@records_all = Photo.search_for(@content, @method)
			@records = @records_all.page(params[:photo]).order("created_at DESC").per(6)

		  #サイドバー表示する際に必要な情報
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
end
