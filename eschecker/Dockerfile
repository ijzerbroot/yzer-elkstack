FROM fedora:26
MAINTAINER Frank Hoeben <f.hoeben@gmail.com>

RUN dnf -y update && dnf -y install curl jq
ADD eschecker.sh /eschecker.sh
RUN chmod a+rx /eschecker.sh

# Parameter in entrypoint is pause between checks
ENTRYPOINT "/eschecker.sh"
