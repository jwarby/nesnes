all: nesnes

nesnes: dist
	node_modules/.bin/browserify index.js -s NesNes -o dist/nesnes.js

dist:
	mkdir -p dist

.PHONY: test nesnes
