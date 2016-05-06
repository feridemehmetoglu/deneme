class YandalagitsController < ApplicationController
  before_action :set_yandalagit, only: [:show, :edit, :update, :destroy]

  # GET /yandalagits
  # GET /yandalagits.json
  def index
    @yandalagits = Yandalagit.all
  end

  # GET /yandalagits/1
  # GET /yandalagits/1.json
  def show
  end

  # GET /yandalagits/new
  def new
    @yandalagit = Yandalagit.new
  end

  # GET /yandalagits/1/edit
  def edit
  end

  # POST /yandalagits
  # POST /yandalagits.json
  def create
    @yandalagit = Yandalagit.new(yandalagit_params)

    respond_to do |format|
      if @yandalagit.save
        format.html { redirect_to @yandalagit, notice: 'Yandalagit was successfully created.' }
        format.json { render :show, status: :created, location: @yandalagit }
      else
        format.html { render :new }
        format.json { render json: @yandalagit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yandalagits/1
  # PATCH/PUT /yandalagits/1.json
  def update
    respond_to do |format|
      if @yandalagit.update(yandalagit_params)
        format.html { redirect_to @yandalagit, notice: 'Yandalagit was successfully updated.' }
        format.json { render :show, status: :ok, location: @yandalagit }
      else
        format.html { render :edit }
        format.json { render json: @yandalagit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yandalagits/1
  # DELETE /yandalagits/1.json
  def destroy
    @yandalagit.destroy
    respond_to do |format|
      format.html { redirect_to yandalagits_url, notice: 'Yandalagit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yandalagit
      @yandalagit = Yandalagit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yandalagit_params
      params.require(:yandalagit).permit(:index)
    end
end
