class Conta
	attr_accessor :agencia, :conta
	def initialize(agencia, conta)
	@agencia = agencia
	@conta = conta
	@saldo = 0		
	end

	def sacar(valor)
	sacou = 1
		if(valor < @saldo)
			@saldo = @saldo - valor
			puts "Saque realizado!\n"
		else
			sacou = 0
			puts"Saque não realizado!\n"
		end			
	end

	def depositar(valor)
		@saldo = @saldo + valor
	end

	def consultar_saldo()
		puts(@saldo)
	end

	def transferir(conta_destino, valor)
		
		retirou = sacar(valor)
		
		if(retirou = 1 && valor < @saldo)
			conta_destino.depositar(valor)
			
			puts("Ok! R$ #{valor} foi transferido com sucesso.\n")
		else
			puts("Ops! Ocorreu um erro na transferência.\n")
		end
	end
end	
	conta_1 = Conta.new("18333-3","352746")
	
#	conta_1.depositar(60)
	conta_2 = Conta.new("12365-3","352746")
	conta_2.depositar(10)
 	conta_1.consultar_saldo
  	conta_2.consultar_saldo  	
	conta_1.transferir(conta_2, 20)
	p conta_1.inspect
	conta_1.consultar_saldo
