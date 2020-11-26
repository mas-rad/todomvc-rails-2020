class Todo < ApplicationRecord
  scope :active, -> { where(completed: false) }
  scope :completed, -> { where(completed: true) }

  validates :title, presence: true

  def title=(string)
    super string.strip
  end

  def self.toggle_all!
      Todo.update_all completed: Todo.exists?(completed: false)
  end
end
