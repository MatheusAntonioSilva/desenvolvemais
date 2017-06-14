class ClassificacoesController < ApplicationController
    before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]
def new
    @classificacoe = Classificacoe.new
  end

  def create
    @classificacoe = Classificacoe.new(params[:classificacoe].permit(:descricao))

    if @classificacoe.save
      redirect_to classificacoes_index_path, notice: "Classificação Cadastrada com sucesso"
    else
      render action: "new"
    end
  end

   def index
    @classificacoe = Classificacoe.all

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @classificacoe}
    end

  end

  def classificacoe_params
      params.require(:classificacoe).permit(:descricao, :id)
      #params.require(:comment).permit(:id, :name, :body)
    end

  def edit
    @classificacoe =Classificacoe.all
    @classificacoe = Classificacoe.find(params[:id])


  end

   def update
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
      id = params[:id]
      Classificacoe.destroy id
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