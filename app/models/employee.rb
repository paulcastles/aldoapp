class Employee < ActiveRecord::Base
	has_many :sales
	has_many :posts, :dependent => :destroy
	
	def age
		age = (((Date.current - self.dob)/ 365).to_i)
	end
	
end
