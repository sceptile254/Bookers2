# ここはどこ？ => config/routes.rb
Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  get 'books/create'
  get 'books/index'
  get 'books/show'
  get 'books/destroy'
  ## root to: => サイトのルートページ(/)にアクセスしたときに使用するコントローラを決めます
  root to: "homes#top"

  # get 'homes/top'
  devise_for :users #deviseを使う際にURLにusersを含みます。
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
