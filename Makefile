default: binary

binary: requirements
	bash -c 'source venv/bin/activate && ./build.bash'

run-script: requirements
	bash -c 'source venv/bin/activate && bin/main'

requirements:
	venv/bin/pip install -r requirements.txt

venv:
	virtualenv venv

clean:
	rm -rf build dist venv
