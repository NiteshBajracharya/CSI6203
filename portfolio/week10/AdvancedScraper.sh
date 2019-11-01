#!/bin/bash

curl -s https://www.ecu.edu.au/degrees/study-areas/science |
awk -v RS='<[^>]+>' -v ORS='1'