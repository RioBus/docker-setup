# RioBus Docker Setup 🚌 🐳

Bash scripts to configure the whole RioBus environment using Docker containers.

The script assumes Docker is already installed. The rest is on us!

## Configuration

### First-time setup

To set up everything for the first time, simply clone this repo and run `$ ./configure.sh`. That will set up and run each required service. That's it!

### Updating services

If you want to update or reconfigure an individual service, browse its folder and run `$ ./update.sh`. That will remove previous images and containers of that service and rebuild it from scratch.


## Notes

**Installation**: Some scripts will pull an image from Docker Hub and some will build it from our repos, so it might take a while.

**Ports**: only the public services - **proxy** (port 8080) and **website** (port 80) - are exposed to the host machine.