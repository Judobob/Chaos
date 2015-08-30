class DataTableDataController < ApplicationController
  before_action :set_data_table_datum, only: [:show, :edit, :update, :destroy]

  # GET /data_table_data
  # GET /data_table_data.json
  def index
    @data_table_data = DataTableDatum.all
  end

  # GET /data_table_data/1
  # GET /data_table_data/1.json
  def show
  end

  # GET /data_table_data/new
  def new
    @data_table_datum = DataTableDatum.new
  end

  # GET /data_table_data/1/edit
  def edit
  end

  # POST /data_table_data
  # POST /data_table_data.json
  def create
    @data_table_datum = DataTableDatum.new(data_table_datum_params)

    respond_to do |format|
      if @data_table_datum.save
        format.html { redirect_to @data_table_datum, notice: 'Data table datum was successfully created.' }
        format.json { render :show, status: :created, location: @data_table_datum }
      else
        format.html { render :new }
        format.json { render json: @data_table_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_table_data/1
  # PATCH/PUT /data_table_data/1.json
  def update
    respond_to do |format|
      if @data_table_datum.update(data_table_datum_params)
        format.html { redirect_to @data_table_datum, notice: 'Data table datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_table_datum }
      else
        format.html { render :edit }
        format.json { render json: @data_table_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_table_data/1
  # DELETE /data_table_data/1.json
  def destroy
    @data_table_datum.destroy
    respond_to do |format|
      format.html { redirect_to data_table_data_url, notice: 'Data table datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_table_datum
      @data_table_datum = DataTableDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_table_datum_params
      params.require(:data_table_datum).permit(:name)
    end
end
