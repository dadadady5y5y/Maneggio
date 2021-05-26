class CavallisController < ApplicationController
  before_action :set_cavalli, only: %i[ show edit update destroy ]

  # GET /cavallis or /cavallis.json
  def index
    @cavallis = Cavalli.all
  end

  # GET /cavallis/1 or /cavallis/1.json
  def show
  end

  # GET /cavallis/new
  def new
    @cavalli = Cavalli.new
  end

  # GET /cavallis/1/edit
  def edit
  end

  # POST /cavallis or /cavallis.json
  def create
    @cavalli = Cavalli.new(cavalli_params)

    respond_to do |format|
      if @cavalli.save
        format.html { redirect_to @cavalli, notice: "Cavalli was successfully created." }
        format.json { render :show, status: :created, location: @cavalli }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cavalli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cavallis/1 or /cavallis/1.json
  def update
    respond_to do |format|
      if @cavalli.update(cavalli_params)
        format.html { redirect_to @cavalli, notice: "Cavalli was successfully updated." }
        format.json { render :show, status: :ok, location: @cavalli }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cavalli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cavallis/1 or /cavallis/1.json
  def destroy
    @cavalli.destroy
    respond_to do |format|
      format.html { redirect_to cavallis_url, notice: "Cavalli was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cavalli
      @cavalli = Cavalli.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cavalli_params
      params.require(:cavalli).permit(:nome, :descrizione, :età)
    end
end
