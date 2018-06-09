class LicencesController < ApplicationController

	before_action :set_req, only: [:destroy]

	def create
	    @licence = Licence.new(req_params)
		@licence.contractor_id = current_contractor.id


		if @licence.save
			redirect_to profile_path(@licence.contractor_id), notice: 'Qualification successfully created.'
		end
	end


	def destroy
		@licence.destroy
		redirect_to profile_path(@licence.contractor_id), notice: 'Qualification successfully Deleted.' 
	end


	private


		def set_req
			@licence = Licence.find(params[:id])
		end


		def req_params
			params.require(:qualification).permit(:name, :expiration_date, :number, :ltype)
			
		end
end
