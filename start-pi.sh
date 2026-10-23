#!/bin/bash
# Run this on the Pi to start the game server
cd ~/games
python3 -m http.server 8080 &
echo "Game Hub running at http://$(hostname -I | awk '{print $1}'):8080"
echo "Also accessible via Tailscale at http://100.114.144.63:8080"
