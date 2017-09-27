class UseradminController < ApplicationController
	 before_action :set_user, only: [:edit, :update]

	def newcompany
		@useradmin = User.new
		@useradmin.build_perfil

	end
	def newestudante
	  @useradmin = User.new
		@useradmin.build_perfil
	end
	def newinteressado
		@useradminr = User.new
		@useradmin.build_perfil
	end
	def newinvestidor
		@useradmin = User.new
		@useradmin.build_perfil
	end

	 def edit
     
     @useradmin = User.find(params[:id])
  end

	def index
@useradmin = User.all

		end
		 def show
  
    end

		def useradmin
			@useradmin = User.all

		end

   def set_user
      @useradmin= User.find(params[:id])
    end
  def update
	
    respond_to do |format|
      if @useradmin.update(user_params)
        format.html { redirect_to produtos_index_path, notice: "Produto Alterado com sucesso" }
        format.json { render :show, status: :ok, location: @useradmin }
      else
        format.html { render :edit }
        format.json { render json: @useradimin.errors, status: :unprocessable_entity }
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
      params.require(:user).permit(:name, :email, :sobrenome, :password, :tipousuario_id, :visistante, :empresa, perfil_attributes: [:id, :descricao, :profissao, :aniversario, :objetivo, :profissoes, :formacao, :conhecimentos, :habilidades], contatos_attributes: [:id, :contato], emails_attributes: [:id, :email],
      enderecos_attributes: [:id, :endereco, :numero, :cep, :complemento, :pais, :cidade, :uf])
      #params.require(:comment).permit(:id, :name, :body)
    end
end
