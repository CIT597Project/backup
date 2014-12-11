class SchoollistsController < ApplicationController
  before_filter :authenticate_user!

  # GET /schoollists
  # GET /schoollists.json
  def index
    @schoollists = Schoollist.all
  end

  # GET /schoollists/1
  # GET /schoollists/1.json
  def show
    @schoollist = Schoollist.find(params[:id])
  end

  # GET /schoollists/new
  def new
    @schoollist = Schoollist.new
  end

  # GET /schoollists/1/edit
  def edit
  end

  # POST /schoollists
  # POST /schoollists.json
  def create
    @schoollist = Schoollist.new(schoollist_params)

    respond_to do |format|
      if @schoollist.save
        format.html { redirect_to @schoollist, notice: 'Schoollist was successfully created.' }
        format.json { render :show, status: :created, location: @schoollist }
      else
        format.html { render :new }
        format.json { render json: @schoollist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schoollists/1
  # PATCH/PUT /schoollists/1.json
  def update
    respond_to do |format|
      if @schoollist.update(schoollist_params)
        format.html { redirect_to @schoollist, notice: 'Schoollist was successfully updated.' }
        format.json { render :show, status: :ok, location: @schoollist }
      else
        format.html { render :edit }
        format.json { render json: @schoollist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schoollists/1
  # DELETE /schoollists/1.json
  def destroy
    @schoollist.destroy
    respond_to do |format|
      format.html { redirect_to schoollists_url, notice: 'Schoollist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schoollist
      @schoollist = Schoollist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schoollist_params
      params.require(:schoollist).permit(:name, :comment)
    end
end
