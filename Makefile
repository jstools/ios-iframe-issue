
.PHONY: clean build local-server run deploy

clean:
	rm -rf public/*

build:
	$(shell npm bin)/parcel build app/index.html app/iframe.html --out-dir public --public-url ./

local-server:
	$(shell npm bin)/http-server public

run: public build local-server

deploy: build
	$(shell npm bin)/gh-pages public
