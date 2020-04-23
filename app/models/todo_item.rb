class TodoItem < ApplicationRecord
  belongs_to :todo_list
  default_scope -> { order('completed_at asc').order('id DESC') }
  validates :content, presence: true
  def completed?
    !completed_at.blank?
  end
end
