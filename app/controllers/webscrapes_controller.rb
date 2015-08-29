class WebscrapesController < ApplicationController
  before_action :set_webscrape, only: [:show, :edit, :update, :destroy]

  # GET /webscrapes
  # GET /webscrapes.json
  def index
    @webscrapes = Webscrape.all
  end

  # GET /webscrapes/1
  # GET /webscrapes/1.json
  def show
  end

  # GET /webscrapes/new
  def new
    @webscrape = Webscrape.new
    puts @webscrape.search_result
  end

  # GET /webscrapes/1/edit
  def edit
  end


  # POST /webscrapes
  # POST /webscrapes.json
  def create
    @webscrape = Webscrape.new(webscrape_params)

    respond_to do |format|
      if @webscrape.save
        format.html { redirect_to @webscrape, notice: 'Webscrape was successfully created.' }
        format.json { render :show, status: :created, location: @webscrape }
      else
        format.html { render :new }
        format.json { render json: @webscrape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webscrapes/1
  # PATCH/PUT /webscrapes/1.json
  def update
    respond_to do |format|
      if @webscrape.update(webscrape_params)
        format.html { redirect_to @webscrape, notice: 'Webscrape was successfully updated.' }
        format.json { render :show, status: :ok, location: @webscrape }
      else
        format.html { render :edit }
        format.json { render json: @webscrape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webscrapes/1
  # DELETE /webscrapes/1.json
  def destroy
    @webscrape.destroy
    respond_to do |format|
      format.html { redirect_to webscrapes_url, notice: 'Webscrape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webscrape
      @webscrape = Webscrape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webscrape_params
      params.require(:webscrape).permit(:name)
    end
end
