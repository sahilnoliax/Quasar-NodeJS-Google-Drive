FROM nginx:1.19.6
RUN cd node
RUN npm install
RUN cd
RUN cd quasar
RUN quasar dev
