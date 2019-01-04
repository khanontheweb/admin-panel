class Cohort < ApplicationRecord
  has_one :course
  has_many :instructors, :students
end
