FROM --platform=linux/amd64 quay.io/clouddragons/openshift-ansible-base:4.10.32
RUN microdnf install -y openssh-clients iputils jq gcc python3-devel libvirt-devel vi
RUN pip3 install libvirt-python
RUN ansible-galaxy collection install ibm.cloudcollection
RUN ansible-galaxy collection install community.libvirt
RUN echo "[defaults]" >> /etc/ansible/ansible.cfg
RUN echo "host_key_checking = False"  >> /etc/ansible/ansible.cfg
COPY ./ansible/ /ansible/