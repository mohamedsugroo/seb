json.extract! search, :id, :keyword, :location, :created_at, :updated_at
json.url search_url(search, format: :json)

json.jobs @jobs.each do |job|
	json.id job.id
	json.url job_url(job)
	json.title job.title
	json.sector job.job_sector
	json.hourly_rate job.hourly_rate
	json.payment_method job.payment_method
	json.payment_date job.payment_date
	json.number_of_hours job.number_of_hours
	json.company_id job.company_id
	json.category_id job.category_id
	json.created_at job.time_created
	json.updated_at job.time_updated
	json.status job.status
	json.summary job.summary
	json.description job.description
end
