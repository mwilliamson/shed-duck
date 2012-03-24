.PHONY: test 

	
build-tests:
	mkdir -p _build
	node_modules/.bin/shed-compile node_modules/shed-hat/hat.shed duck.shed test --main=hat.run > _build/tests.js

test: build-tests
	node _build/tests.js duck.duckTests
