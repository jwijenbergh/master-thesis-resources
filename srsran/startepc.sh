#!/usr/bin/env bash

[ -d "srsran-downgrade/build" ] || exit
cp ./configs/* ./srsran-downgrade/build/srsepc/src/
cp ./configs/* ./srsran-downgrade/build/srsenb/src/
cp ./configs/* ./srsran-downgrade/build/srsue/src/
cd ./srsran-downgrade/build/srsepc/src && sudo ./srsepc epc.conf
