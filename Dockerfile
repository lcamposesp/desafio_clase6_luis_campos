FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt install -y nodejs gnupg2 ca-certificates lsb-release nginx && \
    npm install -g @angular/cli && \
    npm install -g sonar-scanner --save-dev
    
EXPOSE 80