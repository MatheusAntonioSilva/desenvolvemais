class IdeiaController < ApplicationController
  before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :new]

  # GET /ideia
  # GET /ideia.json
  def index
    @ideia = Ideium.paginate(page: params[:page], per_page: 5)
		
  end
 def suasideias
@ideia = current_user.ideia
  end

    def new
    @ideium = current_user.ideia.build
  end

  # GET /ideia/1
  # GET /ideia/1.json
  def show
    @ideium = Ideium.joins(:user => [:perfil]).find(params[:id])
  end
    def suaideiashow
    @ideium = Ideium.joins(:user => [:perfil]).find(params[:id])
  end


  # GET /ideia/new

  # GET /ideia/1/edit
  def edit
    @ideium = current_user.ideia.find(params[:id])
    @ideium = Ideium.joins(:user => [:perfil]).find(params[:id])
  end

  # POST /ideia
  # POST /ideia.json
  def create
    @ideium = current_user.ideia.build(ideium_params)

    respond_to do |format|
      if @ideium.save
        format.html { redirect_to suaideia_path(@ideium), notice: 'Ideium was successfully created.' }
        format.json { render :show, status: :created, location: @ideium }
      else
        format.html { render :new }
        format.json { render json: @ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideia/1
  # PATCH/PUT /ideia/1.json
  def update

     @ideium = current_user.ideia.find(params[:id])
    respond_to do |format|
      if @ideium.update(ideium_params)
        format.html { redirect_to ideia_index_path, notice: 'Ideium was successfully updated.' }
        format.json { render :show, status: :ok, location: @ideium }
      else
        format.html { render :edit }
        format.json { render json: @ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideia/1
  # DELETE /ideia/1.json
  def destroy
     @ideium = current_user.ideia.find(params[:id])
    @ideium.destroy
    respond_to do |format|
      format.html { redirect_to ideia_index_path, notice: 'Ideium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideium
      @ideium = Ideium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideium_params
      params.require(:ideium).permit(:descricao, :descricaocompleta, :descricaoum, :descricaodois, :descricaotres, :tituloum, :titulodois, :titulotres)
    end
      def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end

end
