

.PHONY: setup

setup:
	@echo "making setup executable"
	chmod +x setup.sh 
	@echo "SETTING UP ..."
	./setup.sh 
	@echo "SETUP DONE"

.PHONY: install 

install: 
	@echo "installing project dependencies"
	./.venv/bin/pip install -r requirements.txt 
	@echo "installation done"

.PHONY: dev 

dev:
	./.venv/bin/pip install -r dev.requirements.txt

all:
	setup 
	install 
	dev 
