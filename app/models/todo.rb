class Todo < ApplicationRecord
    validates :title, presence: true

    def title=(string)
        self[:title] = string.strip
    end
end
