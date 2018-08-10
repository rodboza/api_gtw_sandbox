main()
{
  fazer_donwload ${ZIP_WSO2IS} ${URL_WSO2IS}
  fazer_donwload ${ZIP_WSO2AM} ${URL_WSO2AM}
  fazer_donwload ${MYSQLCONN}  ${URL_MYSQLCONN}
  copiar_arquivo ${ZIP_WSO2IS} ${PAHT_WSO2IS}
  copiar_arquivo ${ZIP_WSO2AM} ${PAHT_WSO2AM}
  copiar_arquivo ${ZIP_WSO2AM} ${PAHT_WSO2AL}
  copiar_arquivo ${MYSQLCONN} ${PAHT_WSO2IS}
  copiar_arquivo ${MYSQLCONN} ${PAHT_WSO2AM}
  copiar_arquivo ${MYSQLCONN} ${PAHT_WSO2AL}
  echo fim
}

copiar_arquivo()
{
  ARQUIVO=$1
  DESTINO=$2
  if !([ -e ${DESTINO}${ARQUIVO} ])
  then
    echo Copiando o arquivo ${ARQUIVO} para ${DESTINO}
    cp ${FROM}${ARQUIVO} ${DESTINO}
  fi
}

fazer_donwload()
{
  ARQUIVO=$1
  URL=$2
  if !([ -e ${FROM}${ARQUIVO} ])
  then    
    echo Fazendo download do arquivo ${ARQUIVO}
    wget -O ${FROM}${ARQUIVO} ${URL}
  fi
}



FROM=${PWD}/install_files/
URL_MYSQLCONN="https://www.dropbox.com/s/qd5sp7rsy8hn125/mysql-connector-java-5.1.46.jar?dl=1"
URL_WSO2AM="https://www.dropbox.com/s/7iq7ia5nh52ulri/wso2am-2.5.0.zip?dl=1"
URL_WSO2IS="https://www.dropbox.com/s/ruqu2tc9nbce150/wso2is-5.6.0.zip?dl=1"
MYSQLCONN="mysql-connector-java-5.1.46.jar"
ZIP_WSO2IS="wso2is-5.6.0.zip"
ZIP_WSO2AM="wso2am-2.5.0.zip"
PAHT_WSO2IS="wso2is/"
PAHT_WSO2AM="wso2am/"
PAHT_WSO2AL="wso2al/"
main 