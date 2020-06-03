FROM java:8

ENV VERSION 1.3.5.3
ENV JVM_OPTS -Xms2G -Xmx6G -XX:PermSize=256m -Dfml.read.Timeout=560

RUN addgroup minecraft && \
        adduser --disabled-password --shell /sbin/nologin --gid 1000 --no-create-home minecraft

WORKDIR /srv/minecraft

RUN wget "https://media.forgecdn.net/files/2932/890/MCEternal(ServerPack${VERSION}).zip" -O server.zip && \
        unzip server.zip -d server_zip && \
        mv -v ./server_zip/*/* ./ && rm -rf server.zip server_zip && \
        chown -R minecraft:minecraft /srv/minecraft
COPY --chown=minecraft:minecraft ./ServerStart.sh /

USER minecraft

EXPOSE 25565
VOLUME /srv/minecraft
CMD /ServerStart.sh
