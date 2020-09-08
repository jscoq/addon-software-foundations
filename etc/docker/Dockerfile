FROM jscoq:addons as jscoq-software-foundations

RUN apt-get install -y openssh-client

# Re-enable SSH
RUN rm ~/.gitconfig

WORKDIR software-foundations
COPY /id_rsa /id_rsa 
ENV GIT_SSH_COMMAND 'ssh -i /id_rsa -o StrictHostKeyChecking=no'
RUN git pull origin master
RUN eval $(opam env) && make

RUN make -C .. pack
