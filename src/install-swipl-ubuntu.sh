#!/usr/bin/env sh

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:swi-prolog/stable
sudo apt-get update
sudo apt-get install swi-prolog -y
