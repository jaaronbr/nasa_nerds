class User < ApplicationRecord
  has_many :nasa_pics
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :password, if: :password

  has_secure_password
end
