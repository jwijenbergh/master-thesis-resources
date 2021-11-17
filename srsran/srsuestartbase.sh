#!/usr/bin/env bash

cd ./srsran-downgrade/build/srsenb/src && sudo ./srsenb enb.conf --rf.device_name=zmq --rf.device_args="fail_on_disconnect=true,tx_port=tcp://*:2000,rx_port=tcp://localhost:2001,id=enb,base_srate=23.04e6"
