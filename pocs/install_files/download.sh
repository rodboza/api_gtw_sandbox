if !([ -e wso2is-5.6.0.zip ])
then
  echo fazendo download do IS
  wget -O wso2is-5.6.0.zip https://www.dropbox.com/s/ruqu2tc9nbce150/wso2is-5.6.0.zip?dl=1
fi

if !([ -e wso2am-2.5.0.zip ])
then
  echo fazendo download do AM
  wget -O wso2am-2.5.0.zip https://www.dropbox.com/s/7iq7ia5nh52ulri/wso2am-2.5.0.zip?dl=1
fi

if !([ -e ../wso2is/wso2is-5.6.0.zip ])
then
  echo copiando IS
  cp wso2is-5.6.0.zip ../wso2is/
fi

if !([ -e ../wso2am/wso2am-2.5.0.zip ])
then
  echo copiando AM
  cp wso2am-2.5.0.zip ../wso2am/
fi

if !([ -e ../wso2al/wso2am-2.5.0.zip ])
then
  echo copiando AL
  cp wso2am-2.5.0.zip ../wso2al/
fi


if !([ -e ../wso2is/mysql-connector-java-5.1.46.jar ])
then
  echo copiando conector mysql para IS
  cp mysql-connector-java-5.1.46.jar ../wso2is/
fi

if !([ -e ../wso2am/mysql-connector-java-5.1.46.jar ])
then
  echo copiando conector mysql para AM
  cp mysql-connector-java-5.1.46.jar ../wso2am/
fi

if !([ -e ../wso2al/mysql-connector-java-5.1.46.jar ])
then
  echo copiando conector mysql para AL
  cp mysql-connector-java-5.1.46.jar ../wso2al/
fi


echo fim


