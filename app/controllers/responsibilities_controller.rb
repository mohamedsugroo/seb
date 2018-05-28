class ResponsibilitiesController < ApplicationController


	before_action :set_req, only: [:destroy]

	def create
	    @res = Responsibility.new(req_params)

		if @res.save
			redirect_to job_path(@res.job_id), notice: 'Responsibility successfully created.'
		end
	end


	def destroy
		@res.destroy
		redirect_to job_path(@res.job_id), notice: 'Responsibility successfully Deleted.' 
	end


	private


		def set_req
			@res = Responsibility.find(params[:id])
		end


		def req_params
			params.require(:responsibility).permit(:name, :job_id, :note)
		end


end
