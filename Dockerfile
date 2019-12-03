FROM ubuntu:latest

COPY . /restore
WORKDIR /restore

RUN apt --yes update && apt --yes upgrade
RUN apt --yes install curl
RUN apt --yes install ruby

RUN curl -o install.sh https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh
RUN chmod +x ./install.sh
RUN ./install.sh

RUN brew bundle
RUN antigen restore antigen-shapshot

CMD ["zsh"]
