class Todo < ApplicationRecord
  validates :title, presence: true
  def title=(value)
    self[:title] = value.strip
  end
  # TODO add title presence validation
  # TODO trim title
end
