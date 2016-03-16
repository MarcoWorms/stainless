# Plugins

A list of recommended plugins.

## Table of Contents

* [Included Plugins](#included-plugins)
  * [ES2015 preset](#es2015-preset-)
  * [Stage 0](#stage-0-)
  * [Stage 1](#stage-1-)
  * [Stage 2](#stage-2-)
  * [Stage 3](#stage-3-)
  * [Flow and Safeness](#flow-and-safeness-)
  * [Other](#other-)
  * [Minification](#minification-)
  * [Third-party](#third-party-)
* [Other Recommended Plugins](#other-recommended-plugins-)
  * [React](#react-)
  * [Compatibility](#compatibility-)
  * [Performance Throwbacks / Waiting to Mature](#performance-throwbacks--waiting-to-mature-)

## Included Plugins [↑](#table-of-contents)

### ES2015 preset [↑](#table-of-contents)

* check-es2015-constants
* es2015-arrow-functions
* es2015-block-scoped-functions
* es2015-block-scoping
* es2015-classes
* es2015-computed-properties
* es2015-destructuring
* es2015-duplicate-keys
* es2015-for-of
* es2015-function-name
* es2015-literals
* es2015-modules-commonjs
* es2015-object-super
* es2015-parameters
* es2015-shorthand-properties
* es2015-spread
* es2015-sticky-regex
* es2015-template-literals
* es2015-typeof-symbol
* es2015-unicode-regex
* regenerator

### Stage 0 [↑](#table-of-contents)

* do-expressions
* function-bind

### Stage 1 [↑](#table-of-contents)

* class-constructor-call
* class-properties
* decorators
* export-extensions

### Stage 2 [↑](#table-of-contents)

* trailing-function-commas
* object-rest-spread

### Stage 3 [↑](#table-of-contents)

* async-to-generator
* exponentiation-operator

### Flow and Safeness [↑](#table-of-contents)

* flow
* flow-comments _- on development_
* flow-strip-types _- on production_
* strict-mode
* undefined-to-void

### Async [↑](#table-of-contents)

* async-functions
* async-generators
* function-sent

### Other [↑](#table-of-contents)

* node-env-inline

### Minification (production only!) [↑](#table-of-contents)

* member-expression-literals
* merge-sibling-variables
* minify-booleans
* property-literals
* remove-console
* remove-debugger
* simplify-comparison-operators

### Third-party [↑](#table-of-contents)

* operator-overload => why: _fits functional style_
* typecheck _- development only, before flow-comments_
* implicit-return => why: _fits functional style_
* strict-equality => why: _enforces safer style_
* conditional-compile => why: _dead code elimintation_
* require-root-rewrite => why: _makes require easier to use_
* source-map-support => why: _automatic node.js sourcemap support_

## Other Recommended Plugins [↑](#table-of-contents)

### React [↑](#table-of-contents)

* jsx
* react-jsx
* react-display-name _- at least on development_
* react-constant-elements _- on production_
* react-inline-elements _- on production_

### Compatibility [↑](#table-of-contents)

* es3-member-expression-literals
* es3-property-literals
* es5-property-mutators
* jscript _- when targeting older IEs_
* inline-environment-variables _- when targeting browsers_
* object-assign
* object-set-prototype-of-to-assign
* proto-to-assign

### Performance Throwbacks / Waiting to Mature [↑](#table-of-contents)

* runtime => why: _reduces memory consumption at cost of performance_
* strong-mode => why: _until v8 implements it_
* inline-functions => why: _outdated_
* inline => why: _also outdated_
* undeclared-variables-check => why: _not usable with node_
* closure-elimination => why: _bugs async code_
* macros => why: _many bugs, bind operator makes this useless_
