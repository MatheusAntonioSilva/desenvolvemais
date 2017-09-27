class UsersController < LoginController

	def newcompany
		@user = User.new
		@user.build_perfil

	end
	def newestudante
		@user = User.new
		@user.build_perfil
	end
	def newinteressado
		@user = User.new
		@user.build_perfil
	end
	def newinvestidor
		@user = User.new
		@user.build_perfil
	end

	def edit
     
     @user = User.find(params[:id])
  
  end
	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to home_path, notice: 'Perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @user}
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
	def create

		@user = User.new(user_params)
		resp = params[:vistitante]
		if @user.save
			if(resp == 1)
			redirect_to new_parceiro_produto_path, notice: "Usuário Cadastrado com sucesso"
			else
			redirect_to login_path, notice: "Usuário Cadastrado com sucesso"
			end
		else
			render action: "new"
		end
	end
	def user_params
      params.require(:user).permit(:name, :sobrenome, :email, :password, :tipousuario_id, :visistante, :empresa, perfil_attributes: [:id, :descricao, :profissao, :aniversario, :objetivo, :profissoes, :formacao, :conhecimentos, :habilidades], contatos_attributes: [:id, :contato], emails_attributes: [:id, :email],
      enderecos_attributes: [:id, :endereco, :numero, :cep, :complemento, :pais, :cidade, :uf])
      #params.require(:comment).permit(:id, :name, :body)
    end
end
