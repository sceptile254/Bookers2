# ここはどこ？ => app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # 1:Nの1側がこの子です。
  has_many :books, dependent: :destroy


  # 1:1でユーザー1人と画像1枚を関連付けましょう。
  has_one_attached :profile_image

  #get_profile_imageというメソッドを定義します。
  def get_profile_image
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/sample-author1.jpg') # たぶん画像がその場所にはないです。
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [100, 100]).processed
  end

end
