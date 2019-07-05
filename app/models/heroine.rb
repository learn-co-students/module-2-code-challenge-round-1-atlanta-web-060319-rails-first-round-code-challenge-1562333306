class Heroine < ApplicationRecord
  validates_uniqueness_of :super_name, :message => "An heroine with that name already exists."
     belongs_to :power
 end
