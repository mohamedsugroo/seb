class Job < ApplicationRecord
	belongs_to :company
	has_many :contacts
	has_many :requirements
end
