class Course < ApplicationRecord
  validates :name, :hours, presence: true
  validates :hours, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 8}
  has_many :cohorts
end
