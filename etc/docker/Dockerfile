
# Addon packages
FROM jscoq:addons as jscoq-software-foundations

RUN apt-get install -y openssh-client

# Re-enable SSH
RUN rm ~/.gitconfig

WORKDIR software-foundations
RUN git pull origin master
COPY /id_rsa /id_rsa 
ENV GIT_SSH_COMMAND 'ssh -i /id_rsa -o StrictHostKeyChecking=no'
RUN eval $(opam env) && make

RUN make -C .. pack


# jsCoq SDK

#RUN cp -rL _build/install/jscoq+64bit/ ./dist && \
#    rm dist/bin/*.byte dist/bin/*.opt \
#       dist/lib/coq/*/*.cmxs \
#       `find dist -regex '.*\.\(cm\(a\|t\|ti\)\|mli?\)'`

#FROM debian:10-slim

#COPY --from=0 /root/jscoq/dist /opt/jscoq

