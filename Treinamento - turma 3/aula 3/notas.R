# recebe 4 notas e calcula a média final do aluno
#menor que 6 reprovado
#media de 6 a 8 aprovado
#media de 8 a 9 aprovado com merito
#media de 9 a 10 aprovado com merito e louvour

# vai entrar as 4 notas
class(notas)
mediaF <- mean(notas)

#arredondamento de cass decimais depois da 
#virgula com round
#round(valor, quantidade de casas após a virgula)
round(mediaF,2)

if (mediaF > 6){
    if(mediaF < 8){
      print("Aprovado")
    }
    if(mediaF >=8 && mediaF <9){
      print("aprovado com merito")
    }
    if(mediaF >=9 && mediaF <= 10){
      print("aprovado com merito e louvour")
    }
}else{
  print("reprovado")
}