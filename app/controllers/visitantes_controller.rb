class VisitantesController < LoginController
 
 def new
    @interessado = User.new
  end
  	def create
		@interessado = User.new(params[:user].permit(:name, :email, :password, :tipousuario_id))

		if @interessado.save
			if(params[:user].permit(:visitante) == 1)
			redirect_to new_parceiro_produto_path, notice: "Usuário Cadastrado com sucesso"
		else
			redirect_to login_path, notice: "Usuário Cadastrado com sucesso"
		end
		else
			render action: "new"
		end
	end
end
