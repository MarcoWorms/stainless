default: all

INC = $(shell find concat -name "*.js" -type f | sort)
SRC = $(shell find src -name "*.js" -type f | sort)
LIB = $(SRC:src/%.js=lib/%.js)
TMP = $(SRC:src/%.js=tmp/%.js)
TMP_MAP = $(SRC:src/%.js=tmp/%.js.map)
LIB_MAP = $(SRC:src/%.js=lib/%.js.map)

CONCAT = node ./scripts/concat.js
MERGE = node ./scripts/merge.js
BABEL = node_modules/.bin/babel
WATCH = node_modules/.bin/watch
BUNDLE = node_modules/.bin/browserify
WATCHY = node_modules/.bin/watchify
EXTERN = node_modules/.bin/exorcist

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

dist/bundle.js: $(LIB) dist
	$(BUNDLE) -p bundle-collapser/plugin -d browser.js | \
		$(EXTERN) ./dist/bundle.js.map > ./dist/bundle.js

##
# grouping rules
##

all: build

build: $(LIB)

browserify: dist/bundle.js

watchify: browserify
	$(shell make watch & make just-watchify)

just-watchify:
	$(WATCHY) -v -p bundle-collapser/plugin -d browser.js \
		-o "$(EXTERN) dist/bundle.js.map > dist/bundle.js"

loc:
	wc --lines src/*

clean:
	rm -rf lib tmp

watch:
	$(WATCH) "make build" ./src ./concat


##
# special rules
##

.PHONY: build loc clean watch browserify watchify just-watchify

.SECONDARY: $(TMP)

.INTERMEDIATE: $(LIB_MAP) $(TMP_MAP)
