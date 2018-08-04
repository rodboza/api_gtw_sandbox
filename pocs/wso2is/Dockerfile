FROM openjdk:8-jdk-alpine3.8

ARG APIM_VERSION=${APIM_VERSION:-5.6.0}
RUN mkdir /opt
COPY ./wso2is-${APIM_VERSION}.zip /opt/
RUN apk add zip && \
    unzip /opt/wso2is-${APIM_VERSION}.zip -d /opt && \
    rm /opt/wso2is-${APIM_VERSION}.zip

RUN apk add curl bash 
COPY ./repository /opt/wso2is-${APIM_VERSION}/repository
COPY ./mysql-connector-java-5.1.46.jar /opt/wso2is-${APIM_VERSION}/repository/components/lib
EXPOSE 9443 9763 4000
WORKDIR /opt/wso2is-${APIM_VERSION}
ENTRYPOINT ["bin/wso2server.sh"]

