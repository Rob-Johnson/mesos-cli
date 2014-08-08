
.PHONY: test
test:
	python setup.py flake8
	python setup.py nosetests --where tests
	isort mesos/**/*.py tests/**/*.py -c
	flake8 tests

.PHONY: fix-isort
fix-isort:
	isort -rc .

.PHONY: clean
clean:
	rm -rf *.egg
	rm -rf .tox
