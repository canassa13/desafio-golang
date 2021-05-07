# Desafio golang

## Descrição

Este é um desafio do modulo de Docker do curso <b>Full Cycle</b>, neste desafio temos que criar uma imagem docker que utilize golang para imprimir na tela <i>"Code.education Rocks!"</i> com o requisito que a imagem tenha menos de <b>2MB</b>

##  Resposta

Para atingir esse objetivo foi necessário utilizar multi-stage build do docker, no primeiro momento é utilizado uma imagem oficial golang para buildar no arquivo .go que faz o print na tela, após essa etapa o arquivo gerado no build é copiado para uma imagem vazia (<i>scratch</i>)  e por fim esse arquivo é executado na nova imagem. 
