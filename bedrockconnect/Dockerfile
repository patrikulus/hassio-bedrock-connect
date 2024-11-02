FROM openjdk:11

RUN apt update && apt install -y jq

RUN mkdir -p /docker/brc
WORKDIR /docker/brc

ADD https://github.com/Pugmatt/BedrockConnect/releases/download/1.51/BedrockConnect-1.0-SNAPSHOT.jar .

COPY start.sh ./start.sh
RUN chmod +x ./start.sh

EXPOSE 19132/udp

CMD ["./start.sh"]