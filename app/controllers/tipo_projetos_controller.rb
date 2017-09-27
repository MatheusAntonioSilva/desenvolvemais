class TipoProjetosController < ApplicationController
   before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]

  # GET /tipo_projetos
  # GET /tipo_projetos.json
  def index
      @tipo_projeto = current_user.tipo_projetos

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @tipo_projeto}
    end
  end

  # GET /tipo_projetos/1
  # GET /tipo_projetos/1.json
  def show
  end

  # GET /tipo_projetos/new
  def new
    @tipo_projeto = current_user.tipo_projetos.build
  end

  # GET /tipo_projetos/1/edit
  def edit
       @tipo_projeto = current_user.tipo_projetos.find(params[:id])
  end

  # POST /tipo_projetos
  # POST /tipo_projetos.json
  def create
    @tipo_projeto = current_user.tipo_projetos.build(tipo_projeto_params)

    respond_to do |format|
      if @tipo_projeto.save
        format.html { redirect_to tiposprojetos_index_path, notice: 'Tipo projeto was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_projeto }
      else
        format.html { render :new }
        format.json { render json: @tipo_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_projetos/1
  # PATCH/PUT /tipo_projetos/1.json
  def update
     @tipo_projeto = current_user.tipo_projetos.find(params[:id])
    respond_to do |format|
      if @tipo_projeto.update(tipo_projeto_params)
        format.html { redirect_to tiposprojetos_index_path, notice: 'Tipo projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_projeto }
      else
        format.html { render :edit }
        format.json { render json: @tipo_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_projetos/1
  # DELETE /tipo_projetos/1.json
  def destroy
      @tipo_projeto = current_user.tipo_projetos.find(params[:id])
      @tipo_projeto.destroy
      redirect_to tiposprojetos_index_path
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_projeto
      @tipo_projeto = TipoProjeto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_projeto_params
      params.require(:tipo_projeto).permit(:tipo)
    end
    def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end
