#!/bin/sh

# Exemplo 1: Barra de progresso
count=0
max_count=20

echo "Barra de progresso:"
while [ $count -lt $max_count ]; do
    sleep .2
    count=$(($count + 1))
    percent=$(($count * 100 / $max_count))
    printf "\r[%-20s] %d%%" $(printf "#%.0s" $(seq 1 $count)) $percent
done
echo
echo "Barra de progresso concluída!"
sleep 1

# Exemplo 2: Spinner
spinner="/|\\-/"

count=0
max_count=20

echo "Spinner:"
while [ $count -lt $max_count ]; do
    sleep .1
    printf "\r%c" "${spinner:$count%${#spinner}:1}"
    count=$(($count + 1))
done
echo
echo "Spinner concluído!"
sleep 1

# Exemplo 3: Pontos de carregamento
count=0
max_count=10

echo "Pontos de carregamento:"
while [ $count -lt $max_count ]; do
    sleep 0.3
    printf "\r%s" "$(printf '.%.0s' $(seq 1 $count))"
    count=$(($count + 1))
done
echo
echo "Pontos de carregamento concluídos!"
sleep 1

# Exemplo 4: Carregamento com "-"
count=0
max_count=10

echo "Carregamento com traços (-):"
while [ $count -lt $max_count ]; do
    sleep 0.3
    printf "\r%s" "$(printf '-%.0s' $(seq 1 $count))"
    count=$(($count + 1))
done
echo
echo "Carregamento com traços concluído!"
sleep 1

# Exemplo 5: Carregamento com "*"
count=0
max_count=10

echo "Carregamento com asteriscos (*):"
while [ $count -lt $max_count ]; do
    sleep 0.3
    printf "\r%s" "$(printf '*%.0s' $(seq 1 $count))"
    count=$(($count + 1))
done
echo
echo "Carregamento com asteriscos concluído!"
sleep 1

# Exemplo 6: Carregamento com "#"
count=0
max_count=10

echo "Carregamento com hashtags (#):"
while [ $count -lt $max_count ]; do
    sleep 0.3
    printf "\r%s" "$(printf '#%.0s' $(seq 1 $count))"
    count=$(($count + 1))
done
echo
echo "Carregamento com hashtags concluído!"
