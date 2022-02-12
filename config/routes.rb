Rails.application.routes.draw do
  devise_for :users
  root to: "photos#index"

# 投稿写真に対しての[いいね]、[コメント]
  resources :photos, only: [:new, :create, :index, :show, :destroy] do
    # いいね機能の詳細ページ作成しない為id無
    resource :favorites, only: [:create, :destroy]
    # 写真に対してのコメントの為ネスト
    resources :comments, only: [:create, :destroy]
  end
# ユーザーに対しての[フォロー]、[フォロワー]
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

end
