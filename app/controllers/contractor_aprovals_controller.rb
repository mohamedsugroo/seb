class ContractorAprovalsController < ApplicationController
  before_action :set_contractor_aproval, only: [:show, :edit, :update, :destroy]

  def index
    @contractor_aprovals = ContractorAproval.all
  end

  def show
  end

  def new
    @contractor_aproval = ContractorAproval.new
  end

  def edit
  end

  def create
    @contractor_aproval = ContractorAproval.new(contractor_aproval_params)

    respond_to do |format|
      if @contractor_aproval.save
        format.html { redirect_to @contractor_aproval, notice: 'Contractor aproval was successfully created.' }
        format.json { render :show, status: :created, location: @contractor_aproval }
      else
        format.html { render :new }
        format.json { render json: @contractor_aproval.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @contractor_aproval.update(contractor_aproval_params)
        format.html { redirect_to @contractor_aproval, notice: 'Contractor aproval was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractor_aproval }
      else
        format.html { render :edit }
        format.json { render json: @contractor_aproval.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contractor_aproval.destroy
    respond_to do |format|
      format.html { redirect_to contractor_aprovals_url, notice: 'Contractor aproval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_contractor_aproval
      @contractor_aproval = ContractorAproval.find(params[:id])
    end

    def contractor_aproval_params
      params.require(:contractor_aproval).permit(:name, :admin_id, :note, :contractor_id)
    end
end
