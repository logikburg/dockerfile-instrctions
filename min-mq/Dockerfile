FROM dev-base
MAINTAINER sandeep.mogla@gmail.com Sandeep Mogla

# change the source to pull from the HK archive to speed up the process
RUN apt-get update && apt-get install -y rpm

wget http://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/messaging/mqadv/mqadv_dev75_linux_x86-64.tar.gz

# COPY mqadv_dev75_linux_x86-64.tar.gz /tmp/mqadv.tar.gz
RUN cd /tmp && tar xvf mqadv.tar.gz
RUN /tmp/mqlicense.sh -accept
RUN rpm -ivh --nodeps --force-debian --prefix /opt/mqm /tmp/MQSeriesRuntime*.rpm
