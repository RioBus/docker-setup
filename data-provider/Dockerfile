FROM riobus/base
RUN git clone -b feature/newDirectionDetection https://github.com/macecchi/riobus-data-provider.git app
WORKDIR app
RUN npm install
ENTRYPOINT npm start