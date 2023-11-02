#!/bin/bash

# Start http-server in the background and capture the output (link)
link=$(http-server -p 3333 -c-1 -s & echo $!)

# Check if the http-server started successfully
if [[ $? -eq 0 ]]; then
    # Replace the placeholder "forwarding_link" with the generated link in the live.html file
    sed 's+forwarding_link+'"$link"'+g' live.html > live_updated.html
    mv live_updated.html live.html
    echo "Server started at http://localhost:3333"
else
    echo "Failed to start the server"
fi

