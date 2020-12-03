class Todo < ApplicationRecord
  scope :active, -> { where(completed: false) }
  scope :completed, -> { where(completed: true) }

  validates :title, presence: true

  def title=(string)
    super string.strip
  end

  def update_or_destroy(attrs = {})
    # ADD CODE HERE...
  end

  def self.toggle_all!
    update_all(completed: active.any?)
  end
end
