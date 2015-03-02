class User < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	has_many :posts, :dependent => :destroy

	has_secure_password
	
	validates_confirmation_of :password
	validates_uniqueness_of :email
	
	
end
