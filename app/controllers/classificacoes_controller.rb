class ClassificacoesController < ApplicationController
    before_filter :authorize_user, only: [:show, :create, :edit, :update, :destroy, :index]
def new
    @classificacoe = current_user.classificacoes.build
  end

  def create
    @classificacoe = current_user.classificacoes.build(params[:classificacoe].permit(:descricao))

    if @classificacoe.save
      redirect_to classificacoes_index_path, notice: "Classificação Cadastrada com sucesso"
    else
      render action: "new"
    end
  end

   def index
    @classificacoe = current_user.classificacoes


  end

  def classificacoe_params
      params.require(:classificacoe).permit(:descricao, :id)
      #params.require(:comment).permit(:id, :name, :body)
    end

  def edit
    @classificacoe = current_user.classificacoes.find(params[:id])
   

  end

   def update
     @classificacoe = current_user.classificacoes.find(params[:id])
    respond_to do |format|
      if @classificacoe.update(classificacoe_params)
        format.html { redirect_to classificacoes_index_path, notice: "Classificação Alterada com Sucesso" }
        format.json { render :show, status: :ok, location: @classificacoe }
      else
        format.html { render :edit }
        format.json { render json: @classificacoe.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
      @classificacoe = current_user.classificacoes.find(params[:id])
      @classificacoe.destroy
      redirect_to classificacoes_index_path
    end

      def set_classificacoe
      @classificacoe= Classificacoe.find(params[:id])
    end

  def marca_classificacoe
      params.require(:classificacoe).permit(:descricao, :id)
      #params.require(:comment).permit(:id, :name, :body)
    end
  def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end

end