class RequirementsController < ApplicationController

	before_action :set_req, only: [:destroy]

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

		def set_req
			@req = Requirement.find(params[:id])
		end


		def req_params
			params.require(:requirement).permit(:name, :job_id)
		end

end
