default: binary

binary: venv
	bash -c 'source venv/bin/activate && script/build'

run-script: venv
	bash -c 'source venv/bin/activate && bin/main'

venv:
	virtualenv venv

clean:
	rm -rf build dist venv
