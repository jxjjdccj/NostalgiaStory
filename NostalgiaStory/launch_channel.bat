@echo off
set CLASSPATH=.;dist\odinms.jar;dist\mina-core.jar;dist\slf4j-api.jar;dist\slf4j-jdk14.jar;dist\mysql-connector-java-bin.jar
java -Dnet.sf.odinms.recvops=recvops.properties -Dnet.sf.odinms.sendops=sendops.properties -Dnet.sf.odinms.wzpath=wz\ -Dnet.sf.odinms.channel.config=channel.properties -Djavax.net.ssl.keyStore=channel.keystore -Djavax.net.ssl.keyStorePassword=passwd -Djavax.net.ssl.trustStore=channel.truststore -Djavax.net.ssl.trustStorePassword=passwd net.sf.odinms.net.channel.ChannelServer
pause