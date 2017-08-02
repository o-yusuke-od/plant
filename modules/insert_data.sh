#!/bin/bash

WDIR="/work/plant/modules"

cd $WDIR

logger -i "start get sensor data"

node ./all_sensor.js

logger -i "end get sensor data"

