class Todo < ApplicationRecord
   validates :title, presence: true
    def title=(string)
        super string.strip
        #self[:title] = string.strip
    end
end



