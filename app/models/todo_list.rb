class TodoList < ApplicationRecord
  has_many :todo_items
  default_scope -> { order('id DESC') }
  validates :title, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 300 }
end
