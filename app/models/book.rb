class Book < ApplicationRecord
  validates :title, :body, presence: true
  # 参考ページ：https://qiita.com/nemui_yo_yeah/items/99d59b4afb7d693d085c
end
