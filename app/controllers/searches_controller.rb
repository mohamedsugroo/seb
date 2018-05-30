class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :destroy]


  def show
    @jobs = Job.where("title LIKE '%#{@search.keyword}%'")
    # "name like ?", "%apple%"


  end


  def create
    @search = Search.new(search_params)
    
    if @search.save
      redirect_to @search, notice: 'Search was successfully created.'
    else
      render :new
    end

  end


  def destroy
    @search.destroy
    redirect_to root_url, notice: 'Search was successfully destroyed.'
  end

  private

    def set_search
      @search = Search.find(params[:id])
    end

    def search_params
      params.require(:search).permit(:keyword, :location)
    end
end
