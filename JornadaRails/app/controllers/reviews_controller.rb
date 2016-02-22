class ReviewsController < ApplicationController
	def create
		@account = Account.find(params[:account_id])
		@review = @account.reviews.create(review_params)

		@review.save
		redirect_to account_path(@account)
	end

	private
	def review_params
		params.require(:review).permit(:rate, :comment)		
	end
end
