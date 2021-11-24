.PHONY: venv
venv:
	echo 'layout python3' > .envrc && \
		direnv allow

.PHONY: reqs
reqs:
	pip install -U pip
	pip install -r requirements.txt

.PHONY: nb
nb:
	cd notebooks && \
		jupyter notebook

.PHONY: setup
setup:
	mkdir -p ~/Documents/OpenSCAD/libraries/MMlib
	cp MMlib/* ~/Documents/OpenSCAD/libraries/MMlib
	cp files/tikzmagic.py .direnv/python-3.9.8/lib/python3.9/site-packages/
