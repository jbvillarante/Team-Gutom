class RawMaterial < ActiveRecord::Base
  belongs_to :supplier

  has_many :purchase_materials
end
