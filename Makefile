all: clean deploy

clean:
	rm -r deploy/* &> /dev/null

deploy: init_app
	firebase deploy

init_app: test
	@echo init_app
	cp -a markups/* deploy/
	cp -a js deploy/
	cp -a css deploy/

test:
	@echo test
