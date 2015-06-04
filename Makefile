default: binary

binary: venv
	bash -c 'source venv/bin/activate && ./build.bash'

run-script: venv
	bash -c 'source venv/bin/activate && bin/main'

venv:
	virtualenv venv

clean:
	rm -rf build dist venv
