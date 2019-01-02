class User < ApplicationRecord
  has_secure_password

  validates :email, :first_name, :last_name, :password, :age, :education_id, :permission_id, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 8, maximum: 32}
  validates :age, numericality: {only_integer: true, less_than: 150}
end
