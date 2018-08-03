FROM openjdk:8-jdk-alpine3.8

ARG APIM_VERSION=${APIM_VERSION:-2.5.0}
RUN mkdir /opt
COPY ../install_files/wso2am-${APIM_VERSION}.zip /opt/
RUN apk add zip && \
    unzip /opt/wso2am-${APIM_VERSION}.zip -d /opt && \
    rm /opt/wso2am-${APIM_VERSION}.zip

COPY ./repository /opt/wso2am-${APIM_VERSION}/repository
EXPOSE 9443 9763 8243 8280 10397 7711
WORKDIR /opt/wso2am-${APIM_VERSION}
ENTRYPOINT ["bin/wso2server.sh"]
