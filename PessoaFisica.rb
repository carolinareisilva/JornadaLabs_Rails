class PessoaFisica < Cliente
	def initialize(cpf, nome, nascimento)
	@cpf = cpf
	@nome = nome
	@nascimento = nascimento
	end
end
