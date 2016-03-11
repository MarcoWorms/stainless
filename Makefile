default: all

INC = $(shell find concat -name "*.js" -type f | sort)
SRC = $(shell find src -name "*.js" -type f | sort)
TMP = $(SRC:src/%.js=tmp/%.js)
LIB = $(SRC:src/%.js=lib/%.js)

CONCAT = node ./scripts/concat.js
MERGE = node ./scripts/merge.js
BABEL = node_modules/.bin/babel
BROWSERIFY = node_modules/.bin/browserify

##
# file targets
##

tmp:
	mkdir -p tmp/

lib:
	mkdir -p lib/

dist:
	mkdir -p dist/

tmp/%.js: src/%.js tmp
	$(CONCAT) $(INC) "$<"

lib/%.js: tmp/%.js lib
	$(BABEL) "$<" --out-file $@ --source-maps
	$(MERGE) "$<.map" "$@.map"
	rm "$<" "$<.map"

dist/bundle.js: dist
	browserify browser.js

##
# special rules
##

.PHONY: build loc clean

.INTERMEDIATE: $(TMP)

##
# grouping rules
##

all: build

build: $(LIB)

loc:
	wc --lines src/*

clean:
	rm -rf lib tmp
