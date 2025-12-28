#!/bin/bash
set -e

echo "[+] Updating system..."
sudo apt update -y

echo "[+] Downloading Netdata kickstart script..."
curl -fsSL https://get.netdata.cloud/kickstart.sh -o /tmp/netdata-kickstart.sh

echo "[+] Installing Netdata (stable, no cloud)..."
sudo sh /tmp/netdata-kickstart.sh \
  --stable-channel \
  --disable-telemetry \
  --dont-wait

echo "[+] Enabling and starting Netdata..."
sudo systemctl enable netdata
sudo systemctl start netdata

echo "[+] Verifying Netdata service..."
sudo systemctl status netdata --no-pager

echo "[+] Setup complete!"
echo "[+] Open http://localhost:19999"