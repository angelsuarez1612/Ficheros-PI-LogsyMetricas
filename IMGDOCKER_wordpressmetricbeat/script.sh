#!/bin/bash

service metricbeat start
apache2ctl -DFOREGROUND
tail -f /dev/null
