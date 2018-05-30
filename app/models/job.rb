class Job < ApplicationRecord
	include ActionView::Helpers::DateHelper
	include ActionView::Helpers::TextHelper

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

	def location
		self.contacts.each do |l|
			return l.post_code
		end
	end

	def time_created
		time_ago_in_words(self.created_at)
	end

	def time_updated
		time_ago_in_words(self.updated_at)
	end

	def summary
		self.strip_summary.truncate(200)
	end


	def strip_summary
		strip_tags(self.description)
	end

	def status
		if self.created_at < Time.now - 3.days
			"Cold"
		elsif self.created_at < Time.now - 8.days
			"Dead"
		else
			"Active"
		end
	end
end
