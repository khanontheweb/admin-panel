class Cohort < ApplicationRecord
  has_many :instructors, :students
end
