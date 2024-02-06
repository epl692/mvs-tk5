FROM alpine:3.14
RUN apk add --no-cache bash unzip wget && wget --no-check-certificate https://www.prince-webdesign.nl/images/downloads/mvs-tk5.zip && unzip -d / mvs-tk5.zip && rm mvs-tk5.zip && chmod +x /mvs-tk5/mvs /mvs-tk5/hercules/linux/64/bin/* && rm -rf /mvs-tk5/hercules/windows /mvs-tk5/hercules/darwin && mv /mvs-tk5 /tk5

VOLUME [ "/tk5/conf","/tk5/local_conf","/tk5/local_scripts","/tk5/prt","/tk5/dasd","/tk5/pch","/tk5/jcl","/tk5/log" ]
EXPOSE     3270 8038
WORKDIR	   /tk5/
ENTRYPOINT ["/tk5/mvs"]

