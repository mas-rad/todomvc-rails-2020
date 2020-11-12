class Todo < ApplicationRecord
    validates :title, presence: true
    def title=(string)
    super string.strip
  end
  
    # TODO add title presence validation
  # TODO trim title
end
