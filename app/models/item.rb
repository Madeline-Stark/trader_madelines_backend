class Item < ApplicationRecord
  belongs_to :category

  def capitalized_name
    self.name.upcase
  end
end
