#!/bin/bash
echo "===================="
echo "Eliminando datafile sysaux01..."
./s-08-media-recovery.sh
echo "===================="
echo "Realizando Complete Media Recovery..."
./s-08-rman-media-recovery.sh
