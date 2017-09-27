class ProdutosController < ApplicationController
   before_filter :authorize_user, only: [:show, :edit, :destroy, :index]

def new
    @produto = current_user.produtos.build
    @tipo_projeto = TipoProjeto.where(user_id: current_user)
    @plataforma = Plataforma.all
    @modulos = Modulo.all
    @grupos = Grupo.where(user_id: current_user)
    @marcas = Marca.all
    @subgrupos = Subgrupo.all
    @classificacoes = Classificacoe.all
    @palavras_chafe  = PalavrasChafe.all
  end

  def create
    @produto = current_user.produtos.build(produto_params)
    if @produto.save
      redirect_to produtos_index_path, notice: "Usuário Cadastrado com sucesso"
    else
      render action: "new"
    end
  end

  def edit

    @produto = current_user.produtos.find(params[:id])
    @tipo_projeto = TipoProjeto.where(user_id: current_user)
    @plataforma = Plataforma.all
     @modulos = Modulo.all
    @grupos = Grupo.where(user_id: current_user)
    @marcas = Marca.all
    @subgrupos = Subgrupo.all
    @classificacoes = Classificacoe.all
    @palavras_chafe  = PalavrasChafe.all



  end

   def update
        @produto = current_user.produtos.find(params[:id])
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
    

    @produtos = current_user.produtos.where(user_id: current_user)
    
    respond_to do |format|
      format.html  #index.html.erb
      format.json {render json: @produtos}
    end

  end

  def show
  
    end

   def destroy
      @produto = current_user.produtos.find(params[:id])
      @produto.destroy 
      redirect_to produtos_index_path
    end

   def associacao
    
    redirect_to :action=>"new", :controller=>"produto_chaves", :params =>":id"

    end

      def set_produto
      @produto= Produto.find(params[:id])
    end

  def produto_params
      params.require(:produto).permit(:descricao, :codbarra, :codfabrica, :unidade, :grupo_id, :marca_id, :classificacoe_id, :tipoprojeto_id,  :preco_venda, :preco_custo, :margem_bruta, :descricaocompleta, :plataforma_id, :gestao, :compra, :venda, :ecommerce, :infraestrutura, :jogos, :estoque, :modulo_id)
      #params.require(:comment).permit(:id, :name, :body)
    end

   def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end

