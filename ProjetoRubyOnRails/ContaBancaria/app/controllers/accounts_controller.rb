class AccountsController < ApplicationController
	def create
		@account = Account.new(account_params)

		@account.save
		redirect_to @account
	end

	def new
		@account = Account.new
	end

	def access	
		@account = Account
	end

	def index
		@accounts = Account.all
	end

	def opitions
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
