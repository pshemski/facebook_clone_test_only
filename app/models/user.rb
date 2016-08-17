class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	validates :password, presence: true, confirmation: true, length: { in: 6..20 }
	validates :password_confirmation, presence: true
	has_many :statuses, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_secure_password
end
