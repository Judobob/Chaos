class TableNamesController < ApplicationController
  before_action :set_table_name, only: [:show, :edit, :update, :destroy]

  # GET /table_names
  # GET /table_names.json
  def index
    @table_names = TableName.all
  end

  # GET /table_names/1
  # GET /table_names/1.json
  def show
  end

  # GET /table_names/new
  def new
    @table_name = TableName.new
  end

  # GET /table_names/1/edit
  def edit
  end

  # POST /table_names
  # POST /table_names.json
  def create
    @table_name = TableName.new(table_name_params)

    respond_to do |format|
      if @table_name.save
        format.html { redirect_to @table_name, notice: 'Table name was successfully created.' }
        format.json { render :show, status: :created, location: @table_name }
      else
        format.html { render :new }
        format.json { render json: @table_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_names/1
  # PATCH/PUT /table_names/1.json
  def update
    respond_to do |format|
      if @table_name.update(table_name_params)
        format.html { redirect_to @table_name, notice: 'Table name was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_name }
      else
        format.html { render :edit }
        format.json { render json: @table_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_names/1
  # DELETE /table_names/1.json
  def destroy
    @table_name.destroy
    respond_to do |format|
      format.html { redirect_to table_names_url, notice: 'Table name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_name
      @table_name = TableName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_name_params
      params.require(:table_name).permit(:table_name)
    end
end
