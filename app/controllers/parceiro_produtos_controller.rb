class ParceiroProdutosController < ApplicationController
  before_filter :authorize_user, only: [:show, :edit, :update, :destroy, :index]

  # GET /parceiro_produtos
  # GET /parceiro_produtos.json
  def index
    @produtos = current_user.parceiro_produtos.joins(:produtos)
    @parceiro_produto = current_user.parceiro_produtos.joins(:produto)
  end
  def adicionarinteresse
  @produtos = Produto.all
  end
def produtos(id)
    @produtos = Produto.find(params[:id])
	end
  # GET /parceiro_produtos/1
  # GET /parceiro_produtos/1.json
  def show
  end
  def interesse
 	if params[:search]
			@produtos = Produto.where("descricao like ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 5)
		
		else
		  @produtos = Produto.all.paginate(page: params[:page], per_page: 5)
		end
  end
  def produto
    @parceiro_produto = ParceiroProduto.new
    @solucoe = Produto.find(params[:id])
    end

  # GET /parceiro_produtos/new
  def new
    
     @parceiro_produto = current_user.parceiro_produtos.build
    @produtos = Produto.all
   
  end

  # GET /parceiro_produtos/1/edit
  def edit
    @parceiro_produto =  current_user.parceiro_produtos.find(params[:id])
  end

  # POST /parceiro_produtos
  # POST /parceiro_produtos.json
  def create
    @parceiro_produto = current_user.parceiro_produtos.build(parceiro_produto_params)

      
    if @parceiro_produto.save
      redirect_to interesse_index_path, notice: "Usuário Cadastrado com sucesso"
    else
      render action: "root"
    end
  end

  # PATCH/PUT /parceiro_produtos/1
  # PATCH/PUT /parceiro_produtos/1.json
  def update
      @parceiro_produto =  current_user.parceiro_produtos.find(params[:id])
    respond_to do |format|
      if @parceiro_produto.update(parceiro_produto_params)
        format.html { redirect_to @parceiro_produto, notice: 'Parceiro produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @parceiro_produto }
      else
        format.html { render :edit }
        format.json { render json: @parceiro_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parceiro_produtos/1
  # DELETE /parceiro_produtos/1.json
  def destroy
    @parceiro_produto.destroy
    respond_to do |format|
      format.html { redirect_to parceiro_produtos_url, notice: 'Parceiro produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parceiro_produto
      @parceiro_produto = ParceiroProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parceiro_produto_params
      params.require(:parceiro_produto).permit(:produto_id, :user_id)
    end
      def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end

