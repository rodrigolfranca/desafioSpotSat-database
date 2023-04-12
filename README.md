# desafioSpotSat-database

## how to run

Rode os seguintes comandos na raiz:

    docker build -t spotsatwebdb .

    docker run --name spotsatwebdbcontainer -p 5432:5432 --network spotsatweb -d spotsatwebdb


PS: Estou considerando que você ja criou a rede Docker 'spotsatweb'