class SubgruposController < ApplicationController
  before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]

  # GET /subgrupos
  # GET /subgrupos.json
 def index
    @subgrupo = Subgrupo.all

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @subgrupo}
    end

  end
  # GET /subgrupos/1
  # GET /subgrupos/1.json
  def show
  end

  # GET /subgrupos/new
  def new
    @subgrupo = Subgrupo.new
  end

  # GET /subgrupos/1/edit
  def edit
  end

  # POST /subgrupos
  # POST /subgrupos.json
 def create
    @subgrupo= Subgrupo.new(params[:subgrupo].permit(:nome))

    if @subgrupo.save
      redirect_to subgrupos_index_path, notice: "Subgrupo Cadastrado com sucesso"
    else
      render action: "new"
    end
  end

  # PATCH/PUT /subgrupos/1
  # PATCH/PUT /subgrupos/1.json
  def update
    respond_to do |format|
      if @subgrupo.update(subgrupo_params)
        format.html { redirect_to subgrupos_index_path, notice: 'Subgrupo was successfully updated.' }
        format.json { render :show, status: :ok, location: @subgrupo }
      else
        format.html { render :edit }
        format.json { render json: @subgrupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subgrupos/1
  # DELETE /subgrupos/1.json
 def destroy
      id = params[:id]
      Subgrupo.destroy id
      redirect_to subgrupos_index_path
    end
     def set_subgrupo
      @subgrupo= Subgrupo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subgrupo_params
      params.require(:subgrupo).permit(:nome, :id)
    end
 def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end 
end
