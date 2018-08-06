main()
{
  fazer_donwload "wso2is-5.6.0.zip" "https://www.dropbox.com/s/ruqu2tc9nbce150/wso2is-5.6.0.zip?dl=1"
  fazer_donwload "wso2am-2.5.0.zip" "https://www.dropbox.com/s/7iq7ia5nh52ulri/wso2am-2.5.0.zip?dl=1"
  fazer_donwload "mysql-connector-java-5.1.46.jar" "https://www.dropbox.com/s/qd5sp7rsy8hn125/mysql-connector-java-5.1.46.jar?dl=1"
  copiar_arquivo "wso2is-5.6.0.zip" "../wso2is/"
  copiar_arquivo "wso2am-2.5.0.zip" "../wso2am/"
  copiar_arquivo "wso2am-2.5.0.zip" "../wso2al/"
  copiar_arquivo "mysql-connector-java-5.1.46.jar" "../wso2is/"
  copiar_arquivo "mysql-connector-java-5.1.46.jar" "../wso2am/"
  copiar_arquivo "mysql-connector-java-5.1.46.jar" "../wso2al/"
  echo fim
}

copiar_arquivo()
{
  ARQUIVO=$1
  DESTINO=$2
  if !([ -e ${DESTINO}${ARQUIVO}])
  then
    echo Copiando o arquivo ${ARQUIVO} para ${DESTINO}
    cp ${ARQUIVO} ${DESTINO}
  fi
}

fazer_donwload()
{
  ARQUIVO=$1
  URL=$2
  if !([ -e ${ARQUIVO} ])
  then    
    echo Fazendo download do arquivo ${ARQUIVO}
    wget -O ${ARQUIVO} ${URL}
  fi
}




