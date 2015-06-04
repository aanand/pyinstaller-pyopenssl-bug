default: venv
	bash -c 'source venv/bin/activate && script/build'

venv:
	virtualenv venv

clean:
	rm -rf build dist venv
