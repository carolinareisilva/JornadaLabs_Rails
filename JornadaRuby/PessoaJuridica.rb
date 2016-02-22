class PessoaJuridica < Cliente
	def initialize(cpnj, nome_fantasia,razao_social)
	@cnpj = cnpj
	@nome_fantasia = nome_fantasia
	@razao_social = razao_social
	end
end
