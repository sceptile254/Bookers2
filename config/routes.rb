# ここはどこ？ => config/routes.rb
Rails.application.routes.draw do
  ## root to: => サイトのルートページ(/)にアクセスしたときに使用するコントローラを決めます
  root to: "homes#top"

  # get 'homes/top'
  devise_for :users #deviseを使う際にURLにusersを含みます。
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
