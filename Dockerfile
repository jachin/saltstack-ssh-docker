FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget

COPY saltstack.list /etc/apt/sources.list.d/
RUN wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/2016.11/SALTSTACK-GPG-KEY.pub | apt-key add -

RUN apt-get update && apt-get install -y ssh salt-ssh python-pymongo

COPY roster /etc/salt/
COPY Saltfile /root/
COPY salt_config.yaml /etc/salt/master
COPY ssh/id_rsa /etc/salt/pki/master/ssh/salt-ssh.rsa
COPY ssh/id_rsa.pub /etc/salt/pki/master/ssh/salt-ssh.rsa.pub
COPY ssh/known_hosts /root/.ssh/

#RUN salt-ssh -i 'crow' test.ping
