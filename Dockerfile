FROM openjdk:16

ADD https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar /bin/minecraft-server.jar
COPY entrypoint.sh /bin/entrypoint.sh
COPY eula.txt /opt/minecraft/eula.txt

WORKDIR /opt/minecraft/

EXPOSE 25565/tcp

ENTRYPOINT [ "/bin/entrypoint.sh" ]
