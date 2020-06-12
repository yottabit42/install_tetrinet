#!/usr/bin/env bash
#

sudo dpkg --add-architecture i386 && \
  sudo apt update && \
  sudo apt install --assume-yes wine32 && \
  curl http://tetrinet.us/tnet113.exe > tnet113.exe && \
  wine tnet113.exe && \
  echo "alias tetrinet='wine ~/.wine/drive_c/TetriNET/TETRINET.exe'" >> ~/.bashrc && \
  wine ~/.wine/drive_c/TetriNET/TETRINET.EXE
clear
echo
echo "In the future just type 'tetrinet' to run TetriNET."
echo "(You will need to close and repoen this Terminal window once, before that works.)"
