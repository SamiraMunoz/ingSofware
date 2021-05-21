class Activity < ApplicationRecord
  validates_presence_of :name, :description, :ecoins
end
