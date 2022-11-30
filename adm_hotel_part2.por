programa
{
	funcao inicio()
	{
	limpa()
	real opcao
	
	escreva("================================================================================\n")
	escreva ("Qual programa deseja iniciar?")
	escreva ("\n Fazer hospedagem ----------------------- Digite: 1")
	escreva ("\n Verificar hóspedes --------------------- Digite: 2")
	escreva ("\n Verificar preços ----------------------- Digite: 3")
	escreva ("\n Verificar preços (avançado) ------------ Digite: 4 \n")
	leia (opcao)

	escreva("================================================================================\n")


	se (opcao == 1){
		 Hospedagem()
		}
	se (opcao == 2){
	 Verhosp()
		}
	se (opcao == 3){
		 Preco()
		}
	se (opcao == 4){
		 PrecoA()
		}
	se (opcao < 1 ou opcao > 4) {inicio()}
	 
}


	//-----------------------------------------------------------------------------------
	funcao Hospedagem()
	{
		limpa ()
		inteiro valor
		escreva ("Insira o valor da diária: ")
		leia (valor)
		
		inteiro qntDias
		escreva("Insira a quantidade de dias: ")
		leia (qntDias)

		inteiro confirm1 = 0
		inteiro confirm2 = 0


		se (valor > 0){
		confirm1 = 1	
		}
		se (qntDias > 0 e qntDias <= 30){
		confirm2 = 1
		}
		se (confirm1 == 1 e confirm2 == 1){escreva("Fim do programa!")}
		senao {
		limpa()
		escreva ("Valor inválido\nTente novamente!\n")
		escreva ("=================================\n")
		inicio()}
	}
			
	funcao Verhosp (){
		limpa ()
		inteiro qnt, total = 0
		escreva ("Quantidade de hóspedes: ")
		leia (qnt)
		escreva ("\n=========================\n")
		
		inteiro chk = 0
		enquanto (chk != qnt){

		inteiro nQuarto
		escreva ("Número do quarto: ")
		leia (nQuarto)
		escreva ("-------------------------\n")

		inteiro valor
		escreva ("Valor da diária: ")
		leia (valor)
		escreva ("-------------------------\n")
		escreva ("Quarto ",nQuarto, +": R$",valor, "\n")
		escreva ("=========================\n")
		chk = chk + 1
		total = total + valor
	}
		escreva("total de diárias é: R$",total)

}
	funcao Preco(){
	limpa()
	inteiro valor 
	escreva ("Escreva o valor da hospedagem: ")
	leia (valor)

	cadeia nomeH = ""
	inteiro idade = 0
	inteiro qntPessoas = 0
	inteiro MeI = 0
	inteiro MaI = 0
	inteiro Total1 = 0
	inteiro sub = 0
	inteiro div = 0
	inteiro check = 0
	
	enquanto (nomeH != "PARE"){
	escreva ("Escreva 'PARE' para encerrar o programa\nNome do hóspede: ")
	leia (nomeH)
	se (nomeH != "PARE"){
	escreva ("Idade: ")
	leia (idade)
	qntPessoas = qntPessoas + 1
	
		se (idade < 4){
		escreva (nomeH," possui gratuidade\n")
		MeI = MeI + 1
		qntPessoas = qntPessoas - 1}

		senao se (idade > 80){
		escreva (nomeH," paga meia\n")
		MaI = MaI + 1
		qntPessoas = qntPessoas - 1}
	
		escreva ("\n---------------------------\n")}
	senao {
		
		inteiro a, b, c, d = 0
				
		a = qntPessoas * valor // Numero de Pessoas x Valor = X
		// b = a * MeI * 0 // Valor total * Menores de 3 x 0 = 0 sempre --> Descartei a conta 
		c = MaI * valor / 2 // Maiores de idade x valor = z / 2 = x (Meia)
		d = a + c // resposta = Valor total + Meia

		escreva ("Total de hospedagem: R$",d, "; " ,MeI, " gratuidade(s); " ,MaI, " meia(s).")
		}
	}}

	funcao PrecoA (){
	limpa()
	inteiro valor 
	escreva ("Escreva o valor da hospedagem: ")
	leia (valor)
	escreva ("===============================\n")
	

	cadeia check = "S"
	cadeia nome = ""
	inteiro idade = 0
	inteiro MeI = 0
	inteiro MaI = 0
	inteiro qntPessoas = 0
	inteiro menorIdade 
	inteiro maiorIdade 
	cadeia nomeMaI = ""
	cadeia nomeMeI = ""

		escreva("\nNome do hóspede: ")
		leia (nome)
		nomeMaI = nome
		nomeMeI = nome
		escreva ("Idade do hóspede: ")
		leia (idade)
		
		menorIdade = idade
		maiorIdade = idade
		qntPessoas = qntPessoas + 1
		se (idade < 4){
		escreva (nome," possui gratuidade\n")
		MeI = MeI + 1
		qntPessoas = qntPessoas - 1}

		senao se (idade > 80){
		escreva (nome," paga meia\n")
		MaI = MaI + 1
		qntPessoas = qntPessoas - 1}
		escreva ("\nDeseja continuar? (sim -> S/N <- não)\n")
		leia (check)
		escreva ("============================================\n")
		se (check == "S"){
	
	enquanto (check == "S"){
		escreva("\nNome do hóspede: ")
		leia (nome)
		escreva ("\nIdade do hóspede: ")
		leia (idade)
		qntPessoas = qntPessoas + 1
		
			se (idade <= menorIdade){menorIdade = idade}
			se (idade <= menorIdade){nomeMeI = nome}
			se (idade >= maiorIdade){maiorIdade = idade}
			se (idade >= maiorIdade){nomeMaI = nome}

			
		se (idade < 4){
		escreva (nome," possui gratuidade\n")
		MeI = MeI + 1
		qntPessoas = qntPessoas - 1}

		senao se (idade > 80){
		escreva (nome," paga meia\n")
		MaI = MaI + 1
		qntPessoas = qntPessoas - 1}
		
		
		escreva ("\nDeseja continuar? (sim -> S/N <- não)\n")
		leia (check)
		escreva ("============================================\n")
		}}


		inteiro a, b, c, d = 0
				
		a = qntPessoas * valor // Numero de Pessoas x Valor = X
		// b = a * MeI * 0 // Valor total * Menores de 3 x 0 = 0 sempre --> Descartei a conta 
		c = MaI * valor / 2 // Maiores de idade x valor = z / 2 = x (Meia)
		d = a + c // resposta = Valor total + Meia

		escreva ("Total de hospedagem: R$",d, "; " ,MeI, " gratuidade(s); " ,MaI, " meia(s).")
		escreva ("\nO hóspede mais velho é: ",nomeMaI, " com ",maiorIdade, " anos")
		escreva ("\nO hóspede mais novo é: ",nomeMeI, " com ",menorIdade, " anos\n")

		}

		
		
		}
		




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3382; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */