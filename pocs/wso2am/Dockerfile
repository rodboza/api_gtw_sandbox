FROM openjdk:8-jdk-alpine3.8


ARG APIM_VERSION=${APIM_VERSION:-2.5.0}
RUN mkdir /opt
#RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2am-${APIM_VERSION}.zip 
#RUN wget -P /opt https://www.dropbox.com/s/7iq7ia5nh52ulri/wso2am-2.5.0.zip
COPY ./wso2am-2.5.0.zip /opt/
#RUN apt-get update && \
#    apt-get install -y zip && \
#    apt-get clean && \
RUN apk add zip && \
    unzip /opt/wso2am-${APIM_VERSION}.zip -d /opt && \
    rm /opt/wso2am-${APIM_VERSION}.zip

EXPOSE 9443 9763 8243 8280 10397 7711
WORKDIR /opt/wso2am-${APIM_VERSION}
ENTRYPOINT ["bin/wso2server.sh"]

#https://www.dropbox.com/s/ruqu2tc9nbce150/wso2is-5.6.0.zip?dl=0
