class Todo < ApplicationRecord
  scope :active, -> { where(completed: false) }

  validates :title, presence: true

  def title=(string)
    super string.strip
  end
end
