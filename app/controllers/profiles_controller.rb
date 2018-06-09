class ProfilesController < ApplicationController
  def index
    @profiles = Contractor.order("created_at DESC")
  end

  def show
    @profile = Contractor.find(params[:id])
    @licences = Licence.order("created_at DESC")
    @qualifications = Qualification.order("created_at DESC")
    @qualification = Qualification.new
    @licence = Licence.new
  end
end
