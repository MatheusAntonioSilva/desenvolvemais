class PalavrasChavesController < ApplicationController
  before_action :set_palavras_chafe, only: [:show, :edit, :update, :destroy]

  # GET /palavras_chaves
  # GET /palavras_chaves.json

    def index
    @palavras_chafe = PalavrasChafe.all

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @palavras_chafe}
    end
  end

  # GET /palavras_chaves/1
  # GET /palavras_chaves/1.json
  def show
  end

  # GET /palavras_chaves/new
  def new
    @palavras_chafe = PalavrasChafe.new
  end

  # GET /palavras_chaves/1/edit
  def edit
  end

  # POST /palavras_chaves
  # POST /palavras_chaves.json
  def create
    @palavras_chafe = PalavrasChafe.new(palavras_chafe_params)

    respond_to do |format|
      if @palavras_chafe.save
        format.html { redirect_to  palavras_index_path, notice: 'Palavras chafe was successfully created.' }
        format.json { render :show, status: :created, location: @palavras_chafe }
      else
        format.html { render :new }
        format.json { render json: palavras_index_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palavras_chaves/1
  # PATCH/PUT /palavras_chaves/1.json
  def update
    respond_to do |format|
      if @palavras_chafe.update(palavras_chafe_params)
        format.html { redirect_to palavras_index_path, notice: 'Palavras chafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @palavras_chafe }
      else
        format.html { render :edit }
        format.json { render json: palavras_index_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palavras_chaves/1
  # DELETE /palavras_chaves/1.json
   def destroy
    @palavras_chafe.destroy
    respond_to do |format|
      format.html { redirect_to palavras_index_path, notice: 'Parceiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palavras_chafe
      @palavras_chafe = PalavrasChafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palavras_chafe_params
      params.require(:palavras_chafe).permit(:palavra)
    end
end
