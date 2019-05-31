FROM schoolofdevops/carts-maven
RUN mkdir -p /opt/carts
COPY . /opt/carts
WORKDIR /opt/carts
RUN mvn package && mv target/carts.jar /run && rm -rf /opt/carts
EXPOSE 80 
CMD java -jar /run/carts.jar --port=80



