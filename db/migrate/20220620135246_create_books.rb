# ここはどこ？ => db/migrate/2022うんにゃらほげほげ_create_books.rb
class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|

      ## 本のタイトルを保存するカラム
      t.string :title

      ## 感想を保存するカラム
      t.text :body

      ## もう1つ必要なカラム => 投稿したユーザーを識別するID
      t.integer :user_id

      t.timestamps
    end
  end
end
