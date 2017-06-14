class ProdutoChavesController < ApplicationController
  before_action :set_produto_chafe, only: [:show, :edit, :update, :destroy]

  # GET /produto_chaves
  # GET /produto_chaves.json
  def index
    @produto_chaves = ProdutoChave.all
  end

  # GET /produto_chaves/1
  # GET /produto_chaves/1.json
  def show
  end

  # GET /produto_chaves/new
  def new
    @produto_chafe = ProdutoChave.new
    @produto = Produto.all
    @palavras_chafe =  PalavrasChafe.all
    
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
    @produto_chafe = ProdutoChave.new(produto_chafe_params)

    respond_to do |format|
      if @produto_chafe.save
        format.html { redirect_to @produto_chafe, notice: 'Produto chave was successfully created.' }
        format.json { render :show, status: :created, location: @produto_chafe }
      else
        format.html { render :new }
        format.json { render json: @produto_chafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produto_chaves/1
  # PATCH/PUT /produto_chaves/1.json
  def update
    respond_to do |format|
      if @produto_chafe.update(produto_chafe_params)
        format.html { redirect_to @produto_chafe, notice: 'Produto chave was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto_chafe }
      else
        format.html { render :edit }
        format.json { render json: @produto_chafe.errors, status: :unprocessable_entity }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto_chafe
      @produto_chafe = ProdutoChave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_chafe_params
      params[:produto_chafe]
    end
end
