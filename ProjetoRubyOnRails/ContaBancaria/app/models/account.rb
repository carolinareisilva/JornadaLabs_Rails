class Account < ActiveRecord::Base
	validates :agency, presence: true, length: { maximum: 5 }
	validates :account_number, presence: true, length: { maximum: 6 }
	belongs_to :user
end
