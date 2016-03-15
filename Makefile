default: all

INC = $(shell find concat -name "*.js" -type f | sort)
SRC = $(shell find src -name "*.js" -type f | sort)
LIB = $(SRC:src/%.js=lib/%.js)

CONCAT = node ./scripts/concat.js
MERGE = node ./scripts/merge.js
BABEL = node_modules/.bin/babel
WATCH = node_modules/.bin/watch
BUNDLE = node_modules/.bin/browserify
WATCHY = node_modules/.bin/watchify
EXTERN = node_modules/.bin/exorcist
ESLINT = node_modules/.bin/eslint
MOCHA = node_modules/.bin/mocha
MOCHA2 = node_modules/.bin/_mocha
ISTANBUL = node_modules/.bin/istanbul

##
# file targets
##

lib:
	mkdir -p lib/

dist:
	mkdir -p dist/

src/%.js:
	cp ./scripts/newfile.js $@

lib/%.js: src/%.js lib
	$(ESLINT) --cache "$<"
	$(BABEL) "$<" --out-file $@ --source-maps
	$(MERGE) "$<.map" "$@.map"

dist/bundle.js: $(LIB) dist
	$(ESLINT) --cache ./src
	$(BUNDLE) -p bundle-collapser/plugin \
		-p [minifyify --map bundle.js.map --output dist/bundle.js.map] \
		-t babelify -d src/index.js \
		-o dist/bundle.js

##
# grouping rules
##

all: build

lint:
	$(ESLINT) --cache ./src ./concat

build: $(LIB)

browserify: dist/bundle.js

watchify: browserify
	$(WATCHY) -p bundle-collapser/plugin \
		-p [minifyify --map bundle.js.map --output dist/bundle.js.map] \
		-t babelify -d src/index.js \
		-o dist/bundle.js

loc:
	wc --lines src/*

clean:
	rm -rf lib dist coverage

watch:
	$(WATCH) "make build" ./src ./concat

test: lint
	$(MOCHA) --reporter dot --ui bdd --compilers js:babel-register

coverage: build
	$(ISTANBUL) cover $(MOCHA2) -- --reporter dot --ui bdd --compilers js:babel-register

##
# special rules
##

.PHONY: build loc clean watch browserify watchify lint coverage

.INTERMEDIATE: $(LIB)
