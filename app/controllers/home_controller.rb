class HomeController < ApplicationController
  
  def index

  	if contractor_signed_in?
  		redirect_to profile_path(current_contractor.id)
  	elsif company_signed_in?
  		redirect_to dashboard_url
  	end

  end

  def register


  	if contractor_signed_in?
  		redirect_to root_url
  	elsif company_signed_in?
  		redirect_to root_url
  	end


  end


end
