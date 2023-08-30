#!/bin/bash

# IP address information
network_prefix="10.2.83.212"
subnet_mask="255.255.255.0"

# Calculate the starting and ending values for the IP address range
start=1
end=254

# Perform a ping sweep over the specified IP address range
for i in $(seq $start $end); do
    ping -a -c 1 -i 3 -s 50 $network_prefix.$i
done
