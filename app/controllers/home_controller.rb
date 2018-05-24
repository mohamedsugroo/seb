class HomeController < ApplicationController
  
  def index

  	if contractor_signed_in?
  		redirect_to contractorprofile_index_url
  	elsif company_signed_in?
  		redirect_to my_dash_url
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
