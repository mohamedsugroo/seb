class ProfilesController < ApplicationController
  def index
    @profiles = Contractor.order("created_at DESC")
  end

  def show
    @profile = Contractor.find(params[:id])
  end
end
