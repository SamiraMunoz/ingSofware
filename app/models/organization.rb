class Organization < ApplicationRecord
  validates_presence_of :name, :ecoins
  belongs_to :course, optional: true
end
