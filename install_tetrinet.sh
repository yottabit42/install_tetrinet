#!/usr/bin/env bash
# Install wine x86, install TetriNET, add tetrinet alias.

set -eo pipefail

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install --assume-yes wine32
curl "https://raw.githubusercontent.com/yottabit42/install_tetrinet/master/tnet113.exe" -o tnet113.exe
wine tnet113.exe
echo "alias tetrinet='wine ~/.wine/drive_c/TetriNET/TETRINET.exe'" >> ~/.bashrc
wine ~/.wine/drive_c/TetriNET/TETRINET.EXE
echo
echo --
echo
echo "In the future just type 'tetrinet' to run TetriNET."
echo "(You will need to close and repoen this Terminal window once, before that works.)"
