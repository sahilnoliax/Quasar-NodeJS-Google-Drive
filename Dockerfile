FROM nginx:1.19.6
COPY entrypoint.sh /entrypoint.sh
COPY /node /node
COPY /quasar /quasar
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
