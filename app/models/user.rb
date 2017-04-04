class User < ApplicationRecord
  has_secure_password
  has_secure_token :access_token

  validates :name, :username, presence: true

  validates :username, uniqueness: true

end
