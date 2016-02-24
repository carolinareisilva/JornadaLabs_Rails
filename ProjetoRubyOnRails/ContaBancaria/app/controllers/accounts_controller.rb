class AccountsController < ApplicationController
	def create
		@account = Account.new(account_params)

		@account.save
		redirect_to @account
	end

	def new
		@account = Account.new
	end

	def show	
		@account = Account.find(params[:id])
	end

	def authentication
		@account = Account.find_by(agency: params[:account][:agency])
             #   if @user && user.authenticate(params[:account][:account_number])
             #             
   			#	end 
	end

	def index
		@account = Account.new
	end

	def options
		@account = Account.find(params[:id])
	end

	def edit
		@account = Account.find(params[:id])
	end

	def update
		@account = Account.find(params[:id])
		if @account.update(account_params)
			redirect_to @account
		else
			render 'edit'
		end
	end

	def destroy
		@account = Account.find(params[:id])
		@account.destroy

		redirect_to accounts_path
	end

	private
	def account_params
		params.require(:account).permit(:agency, :account_number)
	end
end
