class ProdutosController < ApplicationController
   before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]

def new
    @produto = Produto.new
    @tipo_projeto = TipoProjeto.all
    @plataforma = Plataforma.all
    @grupos = Grupo.all
    @marcas = Marca.all
    @subgrupos = Subgrupo.all
    @classificacoes = Classificacoe.all
    @palavras_chafe  = PalavrasChafe.all
  end

  def create
    @produto = Produto.new(params[:produto].permit(:descricao, :codbarra, :codfabrica, :unidade, :grupo_id, :marca_id, :classificacoe_id, :tipoprojeto_id,  :preco_venda, :preco_custo, :margem_bruta, :descricaocompleta, :plataforma_id,  { :palavras_chafe_id => [] }))

    if @produto.save
      redirect_to produtos_index_path, notice: "Usuário Cadastrado com sucesso"
    else
      render action: "new"
    end
  end

  def edit
    @produto =Produto.all
    @produto = Produto.find(params[:id])
    @tipo_projeto = TipoProjeto.all
    @plataforma = Plataforma.all
    @grupos = Grupo.all
    @marcas = Marca.all
    @subgrupos = Subgrupo.all
    @classificacoes = Classificacoe.all
    @palavras_chafe  = PalavrasChafe.all



  end

   def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to produtos_index_path, notice: "Produto Alterado com sucesso" }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end

  end

   def index
    @produtos = Produto.all

    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @produtos}
    end

  end

   def destroy
      id = params[:id]
      Produto.destroy id
      redirect_to produtos_index_path
    end


      def set_produto
      @produto= Produto.find(params[:id])
    end

  def produto_params
      params.require(:produto).permit(:descricao, :codbarra, :codfabrica, :unidade, :id, :marca_id, :preco_venda, :preco_custo, :margem_bruta, :descricaocompleta, :tipoprojeto_id,  :plataforma_id)
      #params.require(:comment).permit(:id, :name, :body)
    end

   def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end

