
FROM centos:7

RUN yum -y install epel-release centos-release-gluster glusterfs glusterfs-fuse
ADD entrypoint.sh /entrypoint.sh

RUN chmod 700 /entrypoint.sh
ENTRYPOINT /entrypoint.sh
