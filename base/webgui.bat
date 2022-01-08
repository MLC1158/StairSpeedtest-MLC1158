@echo off
chcp 65001>nul
title Stair Speedtest Web GUI Backend
setlocal enabledelayedexpansion
start http://127.0.0.1:6543
tools\gui\websocketd --port=65430 --maxforks=100 --staticdir=tools\gui stairspeedtest /rpc
