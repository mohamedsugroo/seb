json.extract! job, :id, :title, :description, :job_sector, :hourly_rate, :payment_method, :payment_date, :number_of_hours, :company_id, :category_id, :created_at, :updated_at
json.url job_url(job, format: :json)

json.address job.contacts do |contact|

	json.first_line	contact.first_line
	json.postcode	contact.post_code
	
end



json.requirements job.requirements do |req|

	json.job_id	req.job_id
	json.name	req.name
	json.created_at	req.created_at

	
end


json.bids job.bids.size