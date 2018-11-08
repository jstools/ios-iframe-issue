
.PHONY: clean build local-server run

clean:
	rm -rf docs/*

build:
	$(shell npm bin)/parcel build app/index.html app/iframe.html --out-dir docs --public-url ./

local-server:
	$(shell npm bin)/http-server docs

run: public build local-server
