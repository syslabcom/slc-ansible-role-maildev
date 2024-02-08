all: test

.venv/bin/pip:
	python3 -m venv .venv

.venv/bin/molecule: .venv/bin/pip requirements.txt
	.venv/bin/pip install -r requirements.txt

.PHONY: test
test: .venv/bin/molecule
	.venv/bin/molecule test
