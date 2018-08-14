all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""   1. make install       - install the scripts in /usr/local/bin/

install: usrlocalbin

usrlocalbin:
	install --mode=0755 ducks /usr/local/bin/ducks

playbook:
	ansible-playbook ducks.yaml

play: playbook
