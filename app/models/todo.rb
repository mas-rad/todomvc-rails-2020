class Todo < ApplicationRecord
  # TODO add title presence validation
  validates :title, presence: true
  # TODO trim title : redefine setter method for title
  def title=(string)
    super string.strip
  end
end
