Rails.application.routes.draw do
  devise_for :users
  root to: "photos#index"

  # 投稿写真に対しての[いいね]、[コメント]
  resources   :photos,    only: [:new, :create, :index, :show, :destroy] do
    # いいね機能の詳細ページ作成しない為id無
    resource  :favorites, only: [:create, :destroy]
    # 写真に対してのコメントの為ネスト
    resources :comments,  only: [:create, :destroy]
  end
  
  # ユーザーに対しての[フォロー]、[フォロワー]
  resources  :users,         only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get "connection" => "relationships#connection", as: "connection"
  end
  
  # 検索機能
  get "/search", to: "searches#search"
end
