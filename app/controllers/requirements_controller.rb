class RequirementsController < ApplicationController

	before_action :set_contractor_aproval, only: [:destroy]

	def create
	    @req = Requirement.new(req_params)

		if @req.save
			redirect_to job_path(@req.job_id), notice: 'Requirement successfully created.'
		end
	end


	def destroy
		@req.destroy
		redirect_to job_path(@req.job_id), notice: 'Requirement successfully Deleted.' 
	end


	private

		def redirect_to_back_or_default(default = root_url)
			if request.env["HTTP_REFERER"].present? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
				redirect_to :back
			else
				redirect_to default
			end
		end


		def set_req
			@req = Requirement.find(params[:id])
		end


		def req_params
			params.require(:requirement).permit(:name, :job_id)
		end

end
