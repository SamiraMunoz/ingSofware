class Course < ApplicationRecord
  has_many :organizations
  has_many :users
end
