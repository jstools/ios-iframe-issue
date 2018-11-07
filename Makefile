
.PHONY: public build local-server run

public:
	rm -rf public/*

build:
	$(shell npm bin)/parcel build app/index.html app/iframe.html --out-dir docs

local-server:
	$(shell npm bin)/http-server docs

run: public build local-server
