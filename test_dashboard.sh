#!/bin/bash
set -e

CORES=$(nproc)
LOAD=$((CORES - 1))

echo "[+] Generating CPU load using $LOAD cores"
echo "[+] Press CTRL+C to stop"

for i in $(seq 1 $LOAD); do
  yes > /dev/null &
done

wait