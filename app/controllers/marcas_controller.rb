class MarcasController < ApplicationController
    before_action :set_marca, only: [:show, :edit, :update, :destroy]
  def new
    @marca = Marca.new
  end

  def create
    @marca = Marca.new(params[:marca].permit(:descricao))

    if @marca.save
      redirect_to marcas_index_path, notice: "Marca Cadastrado com sucesso"
    else
      render action: "new"
    end
  end

   def index
    @marca = Marca.all

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @marca}
    end

  end

  def edit
    @marca =Marca.all
    @marca = Marca.find(params[:id])


  end

   def update
    respond_to do |format|
      if @marca.update(marca_params)
        format.html { redirect_to marcas_index_path, notice: "marca Alterada com Sucesso" }
        format.json { render :show, status: :ok, location: @marca }
      else
        format.html { render :edit }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
      id = params[:id]
      Marca.destroy id
      redirect_to marcas_index_path
    end

      def set_marca
      @marca= Marca.find(params[:id])
    end

  def marca_params
      params.require(:marca).permit(:descricao, :id)
      #params.require(:comment).permit(:id, :name, :body)
    end

end

