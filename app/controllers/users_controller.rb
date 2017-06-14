class UsersController < LoginController

	def newcompany
		@user = User.new

	end
	def newestudante
		@user = User.new
	end
	def newinteressado
		@user = User.new
	end
	def newinvestidor
		@user = User.new
	end
	

	def create
		@user = User.new(params[:user].permit(:name, :email, :password, :tipousuario_id))

		if @user.save
			redirect_to login_path, notice: "Usuário Cadastrado com sucesso"
		else
			render action: "new"
		end
	end
end
