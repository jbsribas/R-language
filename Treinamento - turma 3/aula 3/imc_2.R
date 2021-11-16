# script que calcula o imc da pessoa e diz a faixa de peso
altura <- scan()
peso <- scan()

# quando usar o scan para indicar que a entrada de valores 
#acabou utilize dois enters
#pois o scan permite a entrada de valores sequencias
#forma de vetor
imc = peso/altura**2

#tabela 
if(imc < 18.5){
  print("magreza")
  
}else{
  if(imc>18.5 && imc <= 24.9){
    print("normal")
    
  }else{
    if(imc>25 && imc<= 29.9 ){
      print("sobrepeso")
  
     }else{
        if(imc>30 && imc <= 39.9){
          print("obesidade")
        }else{
          if(imc>40)
            print("obesidade grave")
        }
     }
  }
}


#if e else encadeado
# quando precisamos colcoar dentro do if ou else
# outra condição









