FROM node:5.7.0
EXPOSE 8080
RUN git clone https://github.com/RioBus/proxy.git app
WORKDIR app
RUN npm install
ENTRYPOINT npm start