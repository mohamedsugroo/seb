class QualificationsController < ApplicationController

	before_action :set_req, only: [:destroy]

	def create
	    @qualification = Qualification.new(req_params)
		@qualification.contractor_id = current_contractor.id


		if @qualification.save
			redirect_to profile_path(@qualification.contractor_id), notice: 'Qualification successfully created.'
		end
	end


	def destroy
		@qualification.destroy
		redirect_to profile_path(@qualification.contractor_id), notice: 'Qualification successfully Deleted.' 
	end


	private


		def set_req
			@qualification = Qualification.find(params[:id])
		end


		def req_params
			params.require(:qualification).permit(:name, :qtype, :contractor_id, :level, :date_issued)
		end


end
