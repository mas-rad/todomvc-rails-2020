class Todo < ApplicationRecord
  scope :active, -> { where(completed: false) }
  scope :completed, -> { where(completed: true) }

  validates :title, presence: true

  def title=(string)
    super string.strip
  end

  def self.toggle_all!
    if completed.count == count
        update_all completed: false
    else
        active.update_all completed: true
    end

    
  end
end
