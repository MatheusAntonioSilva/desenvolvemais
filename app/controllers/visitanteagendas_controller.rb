class Visitanteagendasontroller < ApplicationController
  before_action :set_visitanteagendas, only: [:show, :edit, :update, :destroy]

  # GET /agendas
  # GET /agendas.json
  def index
    @agendas = Agenda.all
  end

  # GET /agendas/1
  # GET /agendas/1.json
  def show
  end

  # GET /agendas/new
  def new
    
    @agenda = Agenda.new

    @motivo = Motivo.all
    
  end

  # GET /agendas/1/edit
  def edit
    @agenda = Agenda.find(params[:id])
        @motivo = Motivo.all
  end

  # POST /agendas
  # POST /agendas.json
  def create
    @agenda = Agenda.new(agenda_params)

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to agendas_index_path, notice: 'Agenda was successfully created.' }
        format.json { render :show, status: :created, location: @agenda }
      else
        format.html { render :new }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendas/1
  # PATCH/PUT /agendas/1.json
  def update
    @agenda = Agenda.find(params[:id])
    respond_to do |format|
      if @agenda.update(agenda_params)
        format.html { redirect_to agendas_index_path, notice: 'Agenda was successfully updated.' }
        format.json { render :show, status: :ok, location: @agenda }
      else
        format.html { render :edit }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendas/1
  # DELETE /agendas/1.json
  def destroy
    @agenda.destroy
    respond_to do |format|
      format.html { redirect_to agendas_index_path, notice: 'Agenda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

     def agenda_params
      params.require(:agenda).permit(:id, :descricao,:data, :name, :horario_inicio, :horario_fim, :user_id, :empresa_id, :produto_id, :motivo_id, :observacao)
      #params.require(:comment).permit(:id, :name, :body)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
     def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end

end
