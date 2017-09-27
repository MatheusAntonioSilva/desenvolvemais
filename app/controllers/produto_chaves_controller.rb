class ProdutoChavesController < ApplicationController
  before_action :set_produto_chafe, only: [:show, :edit, :update, :destroy]

  # GET /produto_chaves
  # GET /produto_chaves.json
  def index
    @produto_chaves = ProdutoChave.all
    @produto = Produto.all
    @palavras_chafe = PalavrasChafe.all

  end

  # GET /produto_chaves/1
  # GET /produto_chaves/1.json
  def show
   @produto = Produto.find(params[:id]).all
   @palavras_chafe = PalavrasChafe.all
  end

  # GET /produto_chaves/new
  def new
    @produto = Produto.all
    @palavras_chafe =  PalavrasChafe.all
    @produto_chafe = ProdutoChave.new

    
  end

  # GET /produto_chaves/1/edit
  def edit
    @produto_chafe = ProdutoChave.new
    @produto = Produto.all
    @produto = Produto.find(params[:id])
  end

  # POST /produto_chaves
  # POST /produto_chaves.json
  def create
    @produto_chafe = ProdutoChave.new(params[:produto_chave].permit(:produto_id,   :palavrachafe_id))

   if @produto_chafe.save
      redirect_to produtos_index_path, notice: "Usuário Cadastrado com sucesso"
    else
      render action: "new"
    end
  end

  # PATCH/PUT /produto_chaves/1
  # PATCH/PUT /produto_chaves/1.json
  def update
    respond_to do |format|
      if @produto_chafe.update(produto_chafe_params)
        format.html { redirect_to  new_produto_chafe_path, notice: 'Produto chave was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto_chafe }
      else
        format.html { render :edit }
        format.json { render json:  new_produto_chafe_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produto_chaves/1
  # DELETE /produto_chaves/1.json
  def destroy
    @produto_chafe.destroy
    respond_to do |format|
      format.html { redirect_to produto_chaves_url, notice: 'Produto chave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_produto_chafe
      @produto_chafe = ProdutoChave.find(params[:produto_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_chafe_params
      params[:produto_chafe]
    end
end
