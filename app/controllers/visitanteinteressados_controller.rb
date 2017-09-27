class VisitanteinteressadosController < ApplicationController
  before_action :set_visitanteinteressado, only: [:show, :edit, :update, :destroy]

  # GET /visitanteinteressados
  # GET /visitanteinteressados.json
  def index
    @visitanteinteressados = Visitanteinteressado.all
  end

  # GET /visitanteinteressados/1
  # GET /visitanteinteressados/1.json
  def show
  end

  # GET /visitanteinteressados/new
  def new
    @visitanteinteressado = Visitanteinteressado.new
    @visitanteinteressado.build_contatos
  end

  # GET /visitanteinteressados/1/edit
  def edit
  end

  # POST /visitanteinteressados
  # POST /visitanteinteressados.json
  def create
    @visitanteinteressado = Visitanteinteressado.new(visitanteinteressado_params)

    respond_to do |format|
      if @visitanteinteressado.save
        format.html { redirect_to new_visitante_path, notice: 'Visitanteinteressado was successfully created.' }
        format.json { render :new_visitante_path, status: :created, location: @new_visitanteinteressado }
      else
        format.html { render :new_visitante_path }
        format.json { render json: @visitanteinteressado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitanteinteressados/1
  # PATCH/PUT /visitanteinteressados/1.json
  def update
    respond_to do |format|
      if @visitanteinteressado.update(visitanteinteressado_params)
        format.html { redirect_to new_visitante_path, notice: 'Visitanteinteressado was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitanteinteressado }
      else
        format.html { render :edit }
        format.json { render json: @visitanteinteressado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitanteinteressados/1
  # DELETE /visitanteinteressados/1.json
  def destroy
    @visitanteinteressado.destroy
    respond_to do |format|
      format.html { redirect_to visitanteinteressados_url, notice: 'Visitanteinteressado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitanteinteressado
      @visitanteinteressado = Visitanteinteressado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitanteinteressado_params
      params.require(:visitanteinteressado).permit(:name, contatos_attributes: [:id, :contato], emails_attributes: [:id, :email],
      enderecos_attributes: [:id, :endereco, :numero, :cep])
    end
end
