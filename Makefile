build:
	python setup.py sdist bdist_wheel

upload: build
	twine upload dist/*

install: build
	pip install dist/*

clean:
	rm -rf build
	rm -rf *.egg-info
	rm -rf dist