class MotivosController < ApplicationController
   before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]

  # GET /motivos
  # GET /motivos.json
  def index
    @motivos = current_user.motivos
  end

  # GET /motivos/1
  # GET /motivos/1.json
  def show
        @motivo = current_user.motivos.find(params[:id])
  end

  # GET /motivos/new
  def new
    @motivo = current_user.motivos.build
  end

  # GET /motivos/1/edit
  def edit
            @motivo = current_user.motivos.find(params[:id])
  end

  # POST /motivos
  # POST /motivos.json
  def create
    @motivo = current_user.motivos.build(motivo_params)

    respond_to do |format|
      if @motivo.save
        format.html { redirect_to motivos_index_path, notice: 'Motivo was successfully created.' }
        format.json { render :show, status: :created, location: @motivo }
      else
        format.html { render :new }
        format.json { render json: @motivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motivos/1
  # PATCH/PUT /motivos/1.json
  def update
            @motivo = current_user.motivos.find(params[:id])
    respond_to do |format|
      if @motivo.update(motivo_params)
        format.html { redirect_to motivos_index_path, notice: 'Motivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @motivo }
      else
        format.html { render :edit }
        format.json { render json: @motivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motivos/1
  # DELETE /motivos/1.json
  def destroy
            @motivo = current_user.motivos.find(params[:id])
    @motivo.destroy
    respond_to do |format|
      format.html { redirect_to motivos_index_path, notice: 'Motivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motivo
      @motivo = Motivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motivo_params
      params.require(:motivo).permit(:descricao)
    end
      def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end
