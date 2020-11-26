class Todo < ApplicationRecord
  scope :active, -> { where(completed: false) }
  scope :completed, -> { where(completed: true) }

  validates :title, presence: true

  def title=(string)
    super string.strip
  end

  def self.toggle_all!
    if Todo.exists?(completed: false)
      Todo.update_all completed: true
    else
      Todo.update_all completed: false    
    end
  end
end
