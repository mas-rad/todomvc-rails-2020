class Todo < ApplicationRecord
  validates :title, presence: true

  def title=(string)
    self[:title]=string.squish
  end
end
