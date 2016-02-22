class Account < ActiveRecord::Base
	has_one :users
	validates agency, presence: true, legth: { maximun: 5 }
	validates account_number, presence: true, legth: { maximun: 6 }
end
