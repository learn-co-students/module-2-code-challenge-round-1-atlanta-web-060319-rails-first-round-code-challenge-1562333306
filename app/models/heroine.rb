class Heroine < ApplicationRecord
  belongs_to :power
    validates :super_name, uniqueness: true


  def self.search(q)
    if !q.to_s.empty?
      self.all.select {|heroine| heroine.power.name == q.downcase}
    else
      self.all
    end
  end
end
