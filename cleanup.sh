#!/bin/bash
set -e

echo "[+] Stopping Netdata service..."
sudo systemctl stop netdata || true

echo "[+] Removing Netdata..."
sudo /usr/libexec/netdata/netdata-uninstaller.sh --yes || true

echo "[+] Cleaning leftover files..."
sudo rm -rf /etc/netdata /var/lib/netdata /var/cache/netdata /var/log/netdata

echo "[+] Cleanup complete!"