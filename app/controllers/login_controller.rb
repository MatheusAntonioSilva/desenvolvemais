class LoginController < ActionController::Base
	def new
		
	end

	def create
		user = User.find_by_email(params[:user][:email])

		if user && user.valid_password?(params[:user][:password])
			session[:user_id] = user.id
			redirect_to home_path
		else
			flash.now[:alert] = "Senha e e-mail invalidos!"
			render action: "new"
		end
	end



	protect_from_forgery with: :exception
end