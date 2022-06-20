# ここはどこ？ => app/models/book.rb
class Book < ApplicationRecord

  # モデルに画像を持たせるために、ActiveStorageを使った記述をします。
  has_one_attached :image

  # 1:NのN側です。
  belongs_to :user

end
