class MajorrankingsController < ApplicationController
  respond_to :html, :xml, :json
  # before_action :set_majorranking, only: [:show, :edit, :update, :destroy]

  def index
    @majorrankings = Majorranking.all
    respond_with(@majorrankings)
  end

  def show
    # respond_with(@majorrankings)
    @name=Majorranking.find_by(:name_abb=>params[:id]).name_abb
    render "majorrankings/#{@name}"
     
  end


  def new
    @majorrankings=Majorranking.all
    
  
    # respond_with(@majorrankings)
  end
  
  def edit
  end

  def create
    @majorrankings = Majorranking.new(majorranking_params)
    @majorrankings.save
    respond_with(@majorrankings)
  end

  def update
    @majorrankings.update(majorranking_params)
    respond_with(@majorrankings)
  end

  def destroy
    @majorrankings.destroy
    respond_with(@majorrankings)
  end
  
  
  private
    def set_majorranking
      @majorrankings = Majorranking.find(params[:id])
    end

    def majorranking_params
      params[:majorrankings]
    end
end
