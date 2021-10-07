class Booking < ApplicationRecord
  belongs_to :users

  before_save :remove_whitespace

  def remove_whitespace 
    self.title = self.title.strip
    self.description = self.description.strip
  end 
end
