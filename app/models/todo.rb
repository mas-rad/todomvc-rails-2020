class Todo < ApplicationRecord
  # TODO add title presence validation
  # TODO trim title
  validates :title, presence: true

  def title=(string)
    #super string.strip
    self[:title] = string.strip
      
  end
end
