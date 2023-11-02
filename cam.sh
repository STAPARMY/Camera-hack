#!/bin/bash


link=$(http-server -p 3333)

# Check if the variable $options_tem is equal to 1
if [[ $options_tem -eq 1 ]]; then
    # Replace the placeholder "forwarding_link" with the generated link in the live.html file
    sed 's+forwarding_link+'$link'+g' live.html > live_updated.html
    mv live_updated.html live.html
fi
