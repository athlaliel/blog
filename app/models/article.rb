class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション
end
