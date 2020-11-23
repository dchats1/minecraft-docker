FROM openjdk:8

ADD https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar /opt/minecraft/
COPY entrypoint.sh /opt/minecraft/entrypoint.sh
COPY eula.txt /opt/minecraft/eula.txt

WORKDIR /opt/minecraft/

EXPOSE 25565/tcp

ENTRYPOINT [ "./entrypoint.sh" ]
