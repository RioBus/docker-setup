#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

configure_script () {
	echo "Configuring $1..."
	source "$2"

	if [ $? -ne 0 ]
	then
		echo "Error configuring $1."
	else
		echo "$1 configured and running."
	fi

	echo ""
}

configure_script "MongoDB" "mongo.sh" && \
configure_script "OSRM" "osrm/update.sh" && \
configure_script "Data Provider" "data-provider/update.sh" && \
configure_script "Streets Provider" "streets-provider/update.sh" && \
configure_script "Proxy" "proxy/update.sh" && \
configure_script "Website" "website/update.sh"

echo "All done!"

cd - >/dev/null