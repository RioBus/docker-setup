FROM node:5.7.0
RUN git clone https://github.com/RioBus/website.git app
WORKDIR app
RUN npm install -g grunt-cli bower
RUN npm run configure
ENTRYPOINT grunt serve
EXPOSE 9000