FROM riobus/base
MAINTAINER Fred Souza <fred@riob.us>
# RUN git clone https://github.com/RioBus/data-provider.git app
RUN git clone https://github.com/macecchi/itinerary-street-names-provider.git app
WORKDIR app
# RUN git fetch --tags
# RUN git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
RUN npm install
ENTRYPOINT npm start