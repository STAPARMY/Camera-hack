#!/bin/bash
link =$http-server -p 3333
if [[$options_tem -eq 1]];then 
sed 's+forwarding_link+'$link'+g'live.html