FROM mcr.microsoft.com/mssql/server:2017-latest
COPY . /tmp
WORKDIR /tmp
RUN chmod +x ./docker-entrypoint.sh ./first.sh ./second.sh
# WORKDIR /usr/src/docker
# RUN chmod +x ./db-init.sh
# CMD /bin/bash ./entrypoint.sh
CMD /bin/bash /tmp/docker-entrypoint.sh