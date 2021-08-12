FROM openjdk:16

ADD https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar /bin/minecraft-server.jar
COPY entrypoint.sh /bin/entrypoint.sh
COPY eula.txt /opt/minecraft/eula.txt

WORKDIR /opt/minecraft/

EXPOSE 25565/tcp

ENTRYPOINT [ "/bin/entrypoint.sh" ]
