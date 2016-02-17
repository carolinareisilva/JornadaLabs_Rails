class ContaPoupanca < Conta
	def gerarTaxa()
		saldo += saldo * 0.006
	end
end
