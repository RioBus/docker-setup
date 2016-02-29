FROM riobus/base
RUN git clone https://github.com/macecchi/itinerary-street-names-provider.git app
WORKDIR app
RUN npm install
ENTRYPOINT node index.js