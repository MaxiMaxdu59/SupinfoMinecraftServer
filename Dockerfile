FROM openjdk:7
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java

WGET https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
RUN java -Xmx1024M -Xms1024M -jar minecraft_server.1.15.2.jar nogui

CMD ["java", "Main"]
