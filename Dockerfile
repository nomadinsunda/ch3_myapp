FROM openjdk:17

WORKDIR /example
COPY . .

RUN useradd -r -M -s /usr/sbin/nologin example \
 && chown -R example:example /example

USER example

RUN javac Main.java
CMD ["java", "Main"]
