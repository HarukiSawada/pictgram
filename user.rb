class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true,length: { in: 8..32 },format: { with: VALID_PASSWORD_REGEX}
end
