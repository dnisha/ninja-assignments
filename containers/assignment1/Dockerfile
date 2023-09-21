FROM ubuntu:latest

RUN mkdir -p /Data/Ninjas/Mohan
RUN mkdir -p /Data/Ninjas/Uma
RUN mkdir -p /Data/Ninjas/Shikha
RUN mkdir -p /Data/Ninjas/Mayank

RUN echo "This is Mohan's directory." > /Data/Ninjas/Mohan/mohan.txt

RUN useradd -m -d /home/mohan -s /bin/bash mohan
RUN useradd -m -d /home/uma -s /bin/bash uma
RUN useradd -m -d /home/shikha -s /bin/bash shikha
RUN useradd -m -d /home/mayank -s /bin/bash mayank

RUN chown -R mohan:mohan /Data/Ninjas/Mohan
RUN chown -R uma:uma /Data/Ninjas/Uma
RUN chown -R shikha:shikha /Data/Ninjas/Shikha
RUN chown -R mayank:mayank /Data/Ninjas/Mayank
