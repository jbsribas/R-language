# script que calcula o imc da pessoa e diz a faixa de peso
altura <- 1.55
peso <- 50

imc = peso/altura**2

#tabela 
if(imc < 18.5)
  print("magreza")

if(imc>18.5 && imc <= 24.9) 
  print("normal")

if(imc>25 && imc<= 29.9 )
  print("sobrepeso")

if(imc>30 && imc <= 39.9)
  print("obesidade")

if(imc>40)
 print("obesidade grave")