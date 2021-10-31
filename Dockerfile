FROM nginx:1.19.6
RUN apt-get update -yq \
    && apt-get -yq install curl gnupg ca-certificates \
    && curl -L https://deb.nodesource.com/setup_12.x | bash \
    && apt-get update -yq \
    && apt-get install -yq \
        dh-autoreconf=19 \
        ruby=1:2.5.* \
        ruby-dev=1:2.5.* \
        nodejs
COPY entrypoint.sh /entrypoint.sh
COPY node /node
COPY quasar /quasar
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
