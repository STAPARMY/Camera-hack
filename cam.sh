#!/bin/bash

# Start http-server in the background and capture the output (link)
echo "1.Live tv"
read tv
echo "0.Exit"
read a
link=$(http-server -p 3333 -c-1 2>/dev/null & echo $!)
# Check user input
if [[ $tv -eq 1 ]]; then
    # Replace the placeholder "forwarding_link" with the generated link in the live.html file
    sed 's+forwarding_link+'"$link"'+g' live.html > live_updated.html
    mv live_updated.html live.html
    echo "Server started at http://localhost:3333"
elif [[ $a -eq 0 ]]; then
    # Exit the script
    exit
else
    echo "Invalid choice"
fi
