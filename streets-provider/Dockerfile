FROM node:5.7.0
RUN git clone https://github.com/macecchi/itinerary-street-names-provider.git app
WORKDIR app
RUN npm install
ENTRYPOINT node index.js