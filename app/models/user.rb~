class User < ActiveRecord::Base
  before_save { self.emailAddress = emailAddress.downcase }
  validates :firstName, presence: true, length: { maximum: 50 }
#  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#  validates :emailAddress, presence:   true,
#                    format:     { with: VALID_EMAIL_REGEX },
#                    uniqueness: { case_sensitive: false }
#  validates :password_secure, length: { minimum: 6 }
end
