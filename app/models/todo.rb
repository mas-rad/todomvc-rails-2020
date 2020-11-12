class Todo < ApplicationRecord
  validates :title, presence: true
  def title=(v)
    self[:title]= v.strip
  end
end
