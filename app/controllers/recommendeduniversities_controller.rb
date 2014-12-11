class RecommendeduniversitiesController < ApplicationController
    respond_to :html, :xml, :json
  before_action :set_recommendeduniversity, only: [:show, :edit, :update, :destroy]
 
  def index
    @recommendeduniversities = Recommendeduniversity.all
    respond_with(@recommendeduniversities)
  end

  def show
    # respond_with(@recommendeduniversity)
    @name=Recommendeduniversity.find_by(:name_abb=>params[:id]).name_abb
    render "recommendeduniversities/#{@name}"
  end

  def new
    @recommendeduniversity = Recommendeduniversity.all
    respond_with(@recommendeduniversity)
   
  end

  def edit
  end

  def create
    @recommendeduniversity = Recommendeduniversity.new(recommendeduniversity_params)
    @recommendeduniversity.save
    respond_with(@recommendeduniversity)
  end

  def update
    @recommendeduniversity.update(recommendeduniversity_params)
    respond_with(@recommendeduniversity)
  end

  def destroy
    @recommendeduniversity.destroy
    respond_with(@recommendeduniversity)
  end

  private
    def set_recommendeduniversity
      @recommendeduniversity = Recommendeduniversity.find(params[:id])
    end

    def recommendeduniversity_params
      params.require(:recommendeduniversity).permit(:institution_name, :institution_address, :institution_city, :institution_state, :institution_zip, :institution_web_address)
    end
end
