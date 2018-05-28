class Job < ApplicationRecord
	belongs_to :company
	has_many :contacts
	has_many :requirements
	has_many :responsibilities

	def complete
		if self.contacts.size > 0 ||self.requirements > 0 || self.requirements > 0
			return true
		else
			return false

		end
				
	end
end
