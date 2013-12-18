class Customer < ActiveRecord::Base
	#has_secure_credit_card_no
	has_secure_password
	has_many :sales
	has_many :posts, :dependent => :destroy
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	def self.search(search)
		search_condition = search + "%"
		find(:all, :conditions => ['name LIKE ?', search_condition])
	end
	
	def age
		age = ((Date.current - self.dob)/ 365).to_i
	end
end
