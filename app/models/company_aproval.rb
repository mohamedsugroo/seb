class CompanyAproval < ApplicationRecord
	belongs_to :company
	belongs_to :admin
end
