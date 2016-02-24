class UsersController < ApplicationController
	def new
		@user = User.new
		if @user.save
			redirect_to @user, notice: "Titular cadastrado com sucesso!"
		else
			render action: :new
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :cpf, :agency, :account_number)	
	end
end
