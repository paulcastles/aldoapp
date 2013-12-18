class Sale < ActiveRecord::Base
has_many :items
	belongs_to :customer
	belongs_to :employee
validate :date_cannot_be_in_the_past 
   
  def date_cannot_be_in_the_past
    errors.add(:date, "can't be in the past") if
      !date.blank? and date < Date.today
 end
 
 #before_create: set_date_to_now
 def set_date_to_now
	self.date = Date.now
end
	
end
