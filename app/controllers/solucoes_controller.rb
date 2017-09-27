class SolucoesController < LoginController

	def index
		
		if params[:search]
			@produtos = Produto.where("descricao like ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 5)
		
		else
		  @produtos = Produto.all.paginate(page: params[:page], per_page: 5)
		end
		
  end
	def produtos(id)
    @produtos = Produto.find(params[:id])
	end
	
	def show
    @solucoe = Produto.find(params[:id])
    end

 

end