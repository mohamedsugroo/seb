class ContractorAprovalsController < ApplicationController
  before_action :set_contractor_aproval, only: [:show, :edit, :update, :destroy]

  # GET /contractor_aprovals
  # GET /contractor_aprovals.json
  def index
    @contractor_aprovals = ContractorAproval.all
  end

  # GET /contractor_aprovals/1
  # GET /contractor_aprovals/1.json
  def show
  end

  # GET /contractor_aprovals/new
  def new
    @contractor_aproval = ContractorAproval.new
  end

  # GET /contractor_aprovals/1/edit
  def edit
  end

  # POST /contractor_aprovals
  # POST /contractor_aprovals.json
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

  # PATCH/PUT /contractor_aprovals/1
  # PATCH/PUT /contractor_aprovals/1.json
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

  # DELETE /contractor_aprovals/1
  # DELETE /contractor_aprovals/1.json
  def destroy
    @contractor_aproval.destroy
    respond_to do |format|
      format.html { redirect_to contractor_aprovals_url, notice: 'Contractor aproval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor_aproval
      @contractor_aproval = ContractorAproval.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractor_aproval_params
      params.require(:contractor_aproval).permit(:name, :admin_id, :note)
    end
end
