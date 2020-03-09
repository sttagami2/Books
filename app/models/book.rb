class Book < ApplicationRecord
  validates :title, presence: true, on: :create
  validates :body, presence: true, on: :create

  # 参考ページ：https://qiita.com/nemui_yo_yeah/items/99d59b4afb7d693d085c
end
