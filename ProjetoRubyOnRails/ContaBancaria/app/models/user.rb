class User < ActiveRecord::Base
	has_one :account
	validates :name, presence: true, length: {maximum: 100}
	validates :cpf, presence: true, length: {maximum: 10}
end
