class User < ApplicationRecord
	#la validité de l'email (il doit etre present et unique)
	attr_internal_accessor :email, :password, :password_confirmation
	validates_uniqueness_of :email, presence: true
	has_secure_password validations: false
end
