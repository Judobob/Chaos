class AlgorithmNamesController < ApplicationController
  before_action :set_algorithm_name, only: [:show, :edit, :update, :destroy]

  # GET /algorithm_names
  # GET /algorithm_names.json
  def index
    @algorithm_names = AlgorithmName.all
  end

  # GET /algorithm_names/1
  # GET /algorithm_names/1.json
  def show
  end

  # GET /algorithm_names/new
  def new
    @algorithm_name = AlgorithmName.new
  end

  # GET /algorithm_names/1/edit
  def edit
  end

  # POST /algorithm_names
  # POST /algorithm_names.json
  def create
    @algorithm_name = AlgorithmName.new(algorithm_name_params)

    respond_to do |format|
      if @algorithm_name.save
        format.html { redirect_to @algorithm_name, notice: 'Algorithm name was successfully created.' }
        format.json { render :show, status: :created, location: @algorithm_name }
      else
        format.html { render :new }
        format.json { render json: @algorithm_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /algorithm_names/1
  # PATCH/PUT /algorithm_names/1.json
  def update
    respond_to do |format|
      if @algorithm_name.update(algorithm_name_params)
        format.html { redirect_to @algorithm_name, notice: 'Algorithm name was successfully updated.' }
        format.json { render :show, status: :ok, location: @algorithm_name }
      else
        format.html { render :edit }
        format.json { render json: @algorithm_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /algorithm_names/1
  # DELETE /algorithm_names/1.json
  def destroy
    @algorithm_name.destroy
    respond_to do |format|
      format.html { redirect_to algorithm_names_url, notice: 'Algorithm name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_algorithm_name
      @algorithm_name = AlgorithmName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def algorithm_name_params
      params.require(:algorithm_name).permit(:algorithm_name)
    end
end
