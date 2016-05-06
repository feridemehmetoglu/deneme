class Scaffold2sController < ApplicationController
  before_action :set_scaffold2, only: [:show, :edit, :update, :destroy]

  # GET /scaffold2s
  # GET /scaffold2s.json
  def index
    @scaffold2s = Scaffold2.all
  end

  # GET /scaffold2s/1
  # GET /scaffold2s/1.json
  def show
  end

  # GET /scaffold2s/new
  def new
    @scaffold2 = Scaffold2.new
  end

  # GET /scaffold2s/1/edit
  def edit
  end

  # POST /scaffold2s
  # POST /scaffold2s.json
  def create
    @scaffold2 = Scaffold2.new(scaffold2_params)

    respond_to do |format|
      if @scaffold2.save
        format.html { redirect_to @scaffold2, notice: 'Scaffold2 was successfully created.' }
        format.json { render :show, status: :created, location: @scaffold2 }
      else
        format.html { render :new }
        format.json { render json: @scaffold2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffold2s/1
  # PATCH/PUT /scaffold2s/1.json
  def update
    respond_to do |format|
      if @scaffold2.update(scaffold2_params)
        format.html { redirect_to @scaffold2, notice: 'Scaffold2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaffold2 }
      else
        format.html { render :edit }
        format.json { render json: @scaffold2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffold2s/1
  # DELETE /scaffold2s/1.json
  def destroy
    @scaffold2.destroy
    respond_to do |format|
      format.html { redirect_to scaffold2s_url, notice: 'Scaffold2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffold2
      @scaffold2 = Scaffold2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scaffold2_params
      params.require(:scaffold2).permit(:Flower, :name, :type)
    end
end
