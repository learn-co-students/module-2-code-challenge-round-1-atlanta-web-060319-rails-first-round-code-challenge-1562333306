class Power < ApplicationRecord
  has_many :heroines

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
