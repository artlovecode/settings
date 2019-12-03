FROM ubuntu:latest

COPY . /restore
WORKDIR /restore

RUN apt-get install curl
RUN apt-get install ruby

RUN wget https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh
RUN chmod +x ./install.sh
RUN ./install.sh

RUN brew bundle
RUN antigen restore antigen-shapshot

CMD ["zsh"]
