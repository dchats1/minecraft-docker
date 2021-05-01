FROM openjdk:8

ADD https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar /bin/minecraft-server.jar
COPY entrypoint.sh /bin/entrypoint.sh
COPY eula.txt /opt/minecraft/eula.txt

WORKDIR /opt/minecraft/

EXPOSE 25565/tcp

ENTRYPOINT [ "/bin/entrypoint.sh" ]
