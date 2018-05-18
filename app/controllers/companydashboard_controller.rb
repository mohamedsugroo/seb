class CompanydashboardController < ApplicationController
  def index
  	@companies = Company.all
  end

  def show
  	@company = Company.find(params[:id])
  end

  def jobs
  end

  def hired
  end
end
