FROM openjdk:17

WORKDIR /example
COPY . .

# 시스템 사용자 생성 (홈 X, 로그인 불가)
RUN useradd -r -M -s /usr/sbin/nologin example \
 && chown -R example:example /example

USER example

RUN javac Main.java
CMD ["java", "Main"]
