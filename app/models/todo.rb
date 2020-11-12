class Todo < ApplicationRecord
    # Title presence validation
    validates :title, presence: true
    # Trim title
    def title=(string)
        super string.strip
    end
    
end
