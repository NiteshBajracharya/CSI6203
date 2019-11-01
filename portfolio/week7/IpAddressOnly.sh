#!/bin/bash
# It displays the Ip Addresses
bash ./IpInfo.sh | sed '1d' | sed '2d' | sed '2d' | sed '3d'