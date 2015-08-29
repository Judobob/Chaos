class DatatTableDataController < ApplicationController
  before_action :set_datat_table_datum, only: [:show, :edit, :update, :destroy]

  # GET /datat_table_data
  # GET /datat_table_data.json
  def index
    @datat_table_data = DatatTableDatum.all
  end

  # GET /datat_table_data/1
  # GET /datat_table_data/1.json
  def show
  end

  # GET /datat_table_data/new
  def new
    @datat_table_datum = DatatTableDatum.new
  end

  # GET /datat_table_data/1/edit
  def edit
  end

  # POST /datat_table_data
  # POST /datat_table_data.json
  def create
    @datat_table_datum = DatatTableDatum.new(datat_table_datum_params)

    respond_to do |format|
      if @datat_table_datum.save
        format.html { redirect_to @datat_table_datum, notice: 'Datat table datum was successfully created.' }
        format.json { render :show, status: :created, location: @datat_table_datum }
      else
        format.html { render :new }
        format.json { render json: @datat_table_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datat_table_data/1
  # PATCH/PUT /datat_table_data/1.json
  def update
    respond_to do |format|
      if @datat_table_datum.update(datat_table_datum_params)
        format.html { redirect_to @datat_table_datum, notice: 'Datat table datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @datat_table_datum }
      else
        format.html { render :edit }
        format.json { render json: @datat_table_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datat_table_data/1
  # DELETE /datat_table_data/1.json
  def destroy
    @datat_table_datum.destroy
    respond_to do |format|
      format.html { redirect_to datat_table_data_url, notice: 'Datat table datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datat_table_datum
      @datat_table_datum = DatatTableDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datat_table_datum_params
      params.require(:datat_table_datum).permit(:name)
    end
end
