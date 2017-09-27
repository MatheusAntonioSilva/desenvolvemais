class GruposController < ApplicationController
  before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]
def new
    @grupo = current_user.grupos.build
  end

  def create
    @grupo = current_user.grupos.build(params[:grupo].permit(:descricao))

    if @grupo.save
      redirect_to grupos_index_path, notice: "Grupo Cadastrado com sucesso"
    else
      render action: "new"
    end
  end

   def index
    @grupo = current_user.grupos

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @grupo}
    end

  end

  def edit
    @grupo = current_user.grupos.find(params[:id])


  end

   def update
     @grupo = current_user.grupos.find(params[:id])
    respond_to do |format|      
      if @grupo.update(grupo_params)
        format.html { redirect_to grupos_index_path, notice: "Grupo Alterada com Sucesso" }
        format.json { render :show, status: :ok, location: @grupo}
      else
        format.html { render :edit }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
      @grupo = current_user.grupos.find(params[:id])
      @grupo.destroy
      redirect_to grupos_index_path
    end

      def set_grupo
      @grupo= Grupo.find(params[:id])
    end

  def grupo_params
      params.require(:grupo).permit(:descricao, :id)
      #params.require(:comment).permit(:id, :name, :body)
    end
  def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end

end

