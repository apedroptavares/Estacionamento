programa
{
    inclua biblioteca Util
 --> u

    inteiro opcao, v, s

inteiro matriz[5][6]= 		  {{0,0,0,0,0,0},
                                {0,0,0,0,0,0},
                                {0,0,0,0,0,0},
                                {0,0,0,0,0,0},
                                {0,0,0,0,0,0}}

    funcao inicio()
    {
        criarTela()

        escreva("\n\t\t\t\t Estacionamento do SuperMarket \n")

        criarTela()

        escreva("\n")
	
		u.aguarde(1000)

		faca{
			menuOpcoes()
			escreva("Digite a opção:")
			leia(opcao)
	
			escolha(opcao){
				caso 0: escreva("Fim de Programa") u.aguarde(2000) 
				pare		
				caso 1: reservaVagas()
				pare
				caso 2: SaidaVagas()
				pare
				caso 3: imprimir()
				pare
				caso contrario: escreva("opção inválida","\n")
				Util.aguarde(2000)
				pare
			}

		}enquanto(opcao !=0)
    }
  funcao menuOpcoes(){

        escreva("\n\t 1 - Entrada de Veículo \n")
        escreva("\t 2 - Saída de Veículo \n")
        escreva("\t 3 - Listar Vagas \n")
        escreva("\t 0 - Sair do programa \n \n")
    }


    

    funcao reservaVagas(){

        escreva("\nDigite Sua Vaga:")
          leia(v)
            enquanto (v > 5 ou v < 0) {
               escreva("Número de Vaga inválido.\n")
               escreva("Por favor, digite um valor válido:")
               leia(v)
               }
                escreva("\nDigite a Setor:")
                leia(s)

    
    // Cria painel ao )
            enquanto (s > 6 ou s < 0) {
               escreva("Número de Setor inválido.")
               escreva("\nPor favor, digite um valor válido:")
               leia(s)
               }


        se(matriz[v][s] == 0){
            escreva("\nVaga disponível ! \n")
            matriz[v][s] = 1
            u.aguarde(2000)
            limpa()
            inicio()
        }
        senao{
            escreva("\nVaga Ocupada ! \n \nPor favor, escolha outra Vaga.\n")
           reservaVagas()
        }
}
    funcao criarTela(){
        para(inteiro i=0; i < 90; i++){
            escreva("=")
            
        }
    }


funcao imprimir() {

	para(v = 0; v < 5; v++){
  	para(s = 0; s < 6; s++){
    escreva(matriz[v][s], " ")
  
}escreva("\n")
	}
	
}

funcao SaidaVagas(){

        escreva("\nDigite Sua Vaga:")
          leia(v)
            enquanto (v > 5 ou v < 0) {
               escreva("Número de Vaga inválido.\n")
               escreva("Por favor, digite um valor válido:")
               leia(v)
               }
                escreva("\nDigite o Setor da Vaga:")
                	leia(s)
            enquanto (s > 6 ou s < 0) {
               escreva("Número de Setor inválido.")
               escreva("\nPor favor, digite um valor válido:")
              		leia(s)
               }


        se(matriz[v][s] == 1){
            escreva("\nSaida de Estacionamento Confirmada ! \n")
            matriz[v][s] = 0
            u.aguarde(2000)
            	limpa()
            		inicio()
		
        } se(matriz[v][s] == 0){

limpa()        
			escreva("\nNão a nenhum veiculo neste local!\n\n")
			escreva("Selecione corretamente a vaga de seu veiculo.\n\nAguarde 3 segundos e Tente novamente!\n")
				u.aguarde(3000)
			
			SaidaVagas()
			
        }
			
			}
	
funcao Finalizacao(){
	escreva("Fim de Programa") 

	u.aguarde(2000)
	limpa()
}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1675; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */