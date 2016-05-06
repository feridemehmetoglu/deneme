class Ruby2scaffoldsController < ApplicationController
  before_action :set_ruby2scaffold, only: [:show, :edit, :update, :destroy]

  # GET /ruby2scaffolds
  # GET /ruby2scaffolds.json
  def index
    @ruby2scaffolds = Ruby2scaffold.all
  end

  # GET /ruby2scaffolds/1
  # GET /ruby2scaffolds/1.json
  def show
  end

  # GET /ruby2scaffolds/new
  def new
    @ruby2scaffold = Ruby2scaffold.new
  end

  # GET /ruby2scaffolds/1/edit
  def edit
  end

  # POST /ruby2scaffolds
  # POST /ruby2scaffolds.json
  def create
    @ruby2scaffold = Ruby2scaffold.new(ruby2scaffold_params)

    respond_to do |format|
      if @ruby2scaffold.save
        format.html { redirect_to @ruby2scaffold, notice: 'Ruby2scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @ruby2scaffold }
      else
        format.html { render :new }
        format.json { render json: @ruby2scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby2scaffolds/1
  # PATCH/PUT /ruby2scaffolds/1.json
  def update
    respond_to do |format|
      if @ruby2scaffold.update(ruby2scaffold_params)
        format.html { redirect_to @ruby2scaffold, notice: 'Ruby2scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruby2scaffold }
      else
        format.html { render :edit }
        format.json { render json: @ruby2scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby2scaffolds/1
  # DELETE /ruby2scaffolds/1.json
  def destroy
    @ruby2scaffold.destroy
    respond_to do |format|
      format.html { redirect_to ruby2scaffolds_url, notice: 'Ruby2scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby2scaffold
      @ruby2scaffold = Ruby2scaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruby2scaffold_params
      params.require(:ruby2scaffold).permit(:name)
    end
end
