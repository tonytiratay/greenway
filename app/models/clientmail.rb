class Clientmail < ActiveRecord::Base

	  validates :mail, presence: true, uniqueness: true
	
end
