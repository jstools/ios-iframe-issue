
.PHONY: install clean build local-server run deploy

install:
	npm install

clean:
	rm -rf public/*

build:
	$(shell npm bin)/parcel build app/index.html app/iframe.html --out-dir public --public-url ./

local-server:
	$(shell npm bin)/http-server public

run: public build local-server

deploy: install clean build
	$(shell npm bin)/gh-pages -d public
