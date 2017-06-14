class PlataformasController < ApplicationController
   before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]

  # GET /plataformas
  # GET /plataformas.json
  def index
      @plataforma = TipoProjeto.all

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @plataforma}
    end
  end

  # GET /plataformas/1
  # GET /plataformas/1.json
  def show
  end

  # GET /plataformas/new
  def new
    @plataforma = Plataforma.new
  end

  # GET /plataformas/1/edit
  def edit
  end

  # POST /plataformas
  # POST /plataformas.json
  def create
    @plataforma = Plataforma.new(plataforma_params)

    respond_to do |format|
      if @plataforma.save
        format.html { redirect_to plataformas_index_path, notice: 'Plataforma was successfully created.' }
        format.json { render :show, status: :created, location: @plataforma }
      else
        format.html { render :new }
        format.json { render json: @plataforma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plataformas/1
  # PATCH/PUT /plataformas/1.json
  def update
    respond_to do |format|
      if @plataforma.update(plataforma_params)
        format.html { redirect_to plataformas_index_path, notice: 'Plataforma was successfully updated.' }
        format.json { render :show, status: :ok, location: @plataforma }
      else
        format.html { render :edit }
        format.json { render json: @plataforma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plataformas/1
  # DELETE /plataformas/1.json
  def destroy
    @plataforma.destroy
    respond_to do |format|
      format.html { redirect_to plataformas_index_path, notice: 'Plataforma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plataforma
      @plataforma = Plataforma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plataforma_params
      params.require(:plataforma).permit(:plataforma)
    end
    def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end
