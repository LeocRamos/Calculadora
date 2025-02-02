#!/bin/bash

# Boas-vindas ao usuário e solicitando 2 números para o cálculo aritmético.

echo "Olá caro usuário, seja bem-vindo á calculadora!"
echo "Para iniciarmos, digite um primeiro valor:"
read num1
echo "Agora digite um segundo valor:"
read num2

#Disponibilizando as opções de cálculos para o usuário
echo "Agora selecione a operação que deseja realizar:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read opcao

# Criando um Loop caso o usuário digite um número errado
while [[ $opcao -lt 1 || $opcao -gt 4 ]]; do
     echo "Opção inválida. Por favor, selecione uma opção válida."
     read opcao

done

# Realizando o  cálculo conforme a opção selecionada pelo usuário
if [[ $opcao -eq 1 ]]; then
    soma=$((num1 + num2))
    echo "O resultado da soma é: $soma"

elif [[ $opcao -eq 2 ]]; then
    subtracao=$((num1 - num2))
    echo "O resultado da subtracao é: $subtracao"

elif [[ $opcao -eq 3 ]]; then
    multiplicacao=$((num1 * num2))
    echo "O resultado da multiplicação é: $multiplicacao"

elif [[ $opcao -eq 4 ]]; then
    if [[ $num2 -eq 0 ]]; then
       echo "Erro: Não é possível dividir por zero!"

    else
       divisao=$(echo "scale=2; $num1 / $num2" | bc)
       echo "O resultado da divisão é: $divisao"
    fi
fi
     
