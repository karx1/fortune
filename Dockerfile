FROM docker/whalesay:latest
RUN apt -u update && apt -y install fortunes
CMD /usr/games/fortune -a | cowsay

