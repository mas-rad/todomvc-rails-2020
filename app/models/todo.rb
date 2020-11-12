class Todo < ApplicationRecord
  validates :title, presence: true
  def title=(value)
    super(value.strip) 
  end
end
