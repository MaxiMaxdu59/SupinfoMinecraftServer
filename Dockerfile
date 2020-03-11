FROM openjdk:7
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java

WGET https://www.minecraft.net/fr-fr/download/server
RUN java -Xmx1024M -Xms1024M -jar minecraft_server.1.15.2.jar nogui

CMD ["java", "Main"]
