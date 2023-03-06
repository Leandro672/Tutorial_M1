extends Node2D

var teste = false
var valor = 0
#retirei o acento agudo da variavel
var numero = 0
#adicionei "var"
var lista = []
#adicionei a variavel nome
var nome = ""
#adicionei a variavel i


func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	#alterei a ordem para ficar mais coerente
	nome = $LineEdit2.text


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	#Retirei a letra maiuscula da variavel
	for i in range(10):
		numero+=i
		lista.append(numero)
		#adicionei "str"
	$Label.text = str (numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#adicionei var cont
	var cont=0
	#retirei o while pois estava travando o programa
	
	if(numero%2==1):
		cont+=1
	if(cont!=0):
		nome = nome+"baldo"
	$Label2.text = nome
