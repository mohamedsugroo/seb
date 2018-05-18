class CompanyAprovalsController < ApplicationController
  before_action :set_company_aproval, only: [:show, :edit, :update, :destroy]


  def index
    @companies = Company.order("created_at DESC")
    @company_aprovals = CompanyAproval.all
    @aprovals = CompanyAproval.new
  end

  def show
  end

  def new
    @company_aproval = CompanyAproval.new
  end

  def edit
  end


  def create
    @company_aproval = CompanyAproval.new(company_aproval_params)

    if @company_aproval.save
      redirect_to company_aprovals_path, notice: 'Company aproval was successfully created.'
    else
      render :new
    end

  end


  def update

    if @company_aproval.update(company_aproval_params)
      redirect_to company_aprovals_path, notice: 'Company aproval was successfully updated.'
    else
      render :edit
    end

  end


  def destroy
    @company_aproval.destroy
    redirect_to company_aprovals_path, notice: 'Company aproval was successfully destroyed.'
  end

  private

    def set_company_aproval
      @company_aproval = CompanyAproval.find(params[:id])
    end

    def company_aproval_params
      params.require(:company_aproval).permit(:name, :admin_id, :note, :company_id)
    end
end
