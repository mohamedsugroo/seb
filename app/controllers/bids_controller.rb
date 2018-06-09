class BidsController < ApplicationController
	before_action :set_bid, only: [:destroy]


	def create
		@bid = Bid.new(bid_params)
		@bid.contractor_id = current_contractor.id
		if @bid.save
			redirect_to job_url(@bid.job_id), notice: 'Your Proposal has been submited.'
		end

	end

	def destroy
		@bid.destroy
		redirect_to job_url(@bid.job_id)
	end

	private
		def bid_params
			params.require(:bid).permit(:price, :numberofhours, :proposal, :contractor_id, :job_id)
		end

		def set_bid
			@bid = Bid.find(params[:id])
		end
end
