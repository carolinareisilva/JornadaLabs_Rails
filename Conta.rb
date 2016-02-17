class Conta
	attr_accessor :valor, :saldo
	def initialize(agencia, conta)
	@agencia = agencia
	@conta = conta
	@saldo = 0		
	end

	def depositar(valor)
		@saldo = @saldo + valor
	end

	def consultar_saldo()
		puts(@saldo)
	end
end	
	conta_1 = Conta.new("18333-3","352746")
	conta_1.depositar(60)
	p conta_1.consultar_saldo
