FROM java:openjdk-9-jdk

RUN apt-get update && apt-get install -yq git
COPY ./wyvern /wyvern
COPY fileserver.wyv /fileserver.wyv
COPY ./static /static
ENV WYVERN_HOME /wyvern
ENV WYVERN_LIB /wyvern/tools/lib
ENV CLASSPATH .:$WYVERN_HOME/tools/build:$WYVERN_LIB/junit-4.11.jar:$WYVERN_LIB/asm-debug-all-5.0.1.jar:$WYVERN_LIB/CopperCompiler.jar:$WYVERN_LIB/CopperRuntime.jar:$WYVERN_LIB/hamcrest-core-1.3.jar:$WYVERN_LIB/javatuples-1.2.jar
EXPOSE 4444

CMD cd / && java wyvern/tools/Interpreter /fileserver.wyv
