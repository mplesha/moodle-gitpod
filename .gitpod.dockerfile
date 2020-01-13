FROM gitpod/workspace-mysql:latest

USER root

RUN chown gitpod:gitpod -R /home/gitpod/.nvm /home/gitpod/.npm \
    && apt update \
    && apt install -y php \
    && apt install -y libapache2-mod-php \ 
    && a2enmod headers 
    
