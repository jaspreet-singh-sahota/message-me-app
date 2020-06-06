class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true,
            length: { minimum: 2, maximum: 15 }
  has_secure_password
end
