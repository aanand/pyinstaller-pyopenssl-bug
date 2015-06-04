default: requirements
	bash -c 'source venv/bin/activate && script/build'

requirements: venv
	venv/bin/pip install -r requirements.txt

venv:
	virtualenv venv

clean:
	rm -rf build dist venv
