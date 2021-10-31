FROM nginx:1.19.6
COPY entrypoint.sh /entrypoint.sh
COPY node /home/app/node
COPY quasar /home/app/quasar
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
