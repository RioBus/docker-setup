#!/bin/bash
docker rmi -f riobus/base
docker build -t riobus/base .
