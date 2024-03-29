# Stainless

A base project for making JavaScript sane.

#### Included:

Drop what you want, keep what you like:

* Babel and many [plugins](/PLUGINS.md) :)
* Bluebird as a faster replacement for native Promises
* Fast.js for replacing slower default functions
* Ramda and ramda-fantasy for functional programming
* Browserify for working with the browser
* Mocha, Chai and Sinon for testing, because I like them
* Makefile for automation (gulp is not worth to me)

#### Customization Notes

You may like to:

* Drop Ramda or Mori, since they provide almost the same functionality.
(remember: Ramda is faster, but Mori's immutable)
* Go for a more idiomatic route and use Immutable.js instead of Ramda and Mori.
(remember to drop non-idiomatic babel syntax plugins too)
* Not using Fast.js? drop it.
* Or do like me and go with the standard package :)

It's all up to you.

## Instructions

Clone the repo and:

* __delete:__ PLUGIN.md
* __rewrite:__ README.md to describe your repo
* __edit:__ .babelrc _to fit your needs_
* __edit:__ package.json:
  * Replace _stainless_ with the name of the your package
  * Remove the _private_ key if you're going to publish the package
  * Change the package _version_ to 0.0.1
  * Replace the package _description_
  * Replace the package _author_
  * Change the _repository_, _bug_ tracker and _homepage_ links with yours
  * Add your _keywords_
  * Edit the _dependencies_ and _devDependencies_ to match your .babelrc and
  runtime needs
  * Plugin package? check _peerDependencies_
* __edit the Makefile__
* __run npm install__
* __make test__
* __edit:__ .gitignore to not ignore dist and lib when working on a npm package
* You're ready to go baby :)

## Recommendations

Other fun/useful functional programming packages:

* [Sanctuary](https://github.com/plaid/sanctuary): slower but safer
alternative to ramda-fantasy.
* [Bilby.js](https://github.com/puffnfresh/bilby.js): from the creator of
fantasy-land, kinda joins Ramda and algebraic data types into one complete
library. Slower than sanctuary because of internal use of curry, simulated
strong types and function overloading.
* [Folktale](https://github.com/origamitower/folktale): repository for a
reworked version of folktale, a great collection of algebraic types. The
original folktale library was also somewhat slow, but faster than Sanctuary
and Bilby.
* [Algebraic](https://github.com/tel/js-algebraic): alternative to
ramda-fantasy, not sure if fantasy-land compatible. Looks great but I didn't
not tested.
* [Monet.js](http://cwmyers.github.io/monet.js/): another algebraic data types
implementation, not fantasy-land compatible.
* [Lodash and Lodash-fp](https://github.com/lodash/lodash): for more
performance at cost of not being sane.
* [Most](https://github.com/cujojs/most): monadic streams.
* [creed](https://github.com/briancavalier/creed): async coroutines for
ES2015, fantasy-land compatible.
* [RxJS](https://github.com/Reactive-Extensions/RxJS): lazy reactive
library for js.
* [Bacon.js](https://github.com/baconjs/bacon.js): Functional reactive
programming for js.
* [Kefir](https://rpominov.github.io/kefir/): Faster alternative to Bacon.
* [Cellx](https://github.com/Riim/cellx): even faster than Kefir.
* [Trine](https://github.com/jussi-kalliokoski/trine): Utility extension
for bind operator.
* [Mori extension](https://github.com/roobie/mori-ext): extension for using
mori with the bind operator.

## Unlicense

    This is free and unencumbered software released into the public domain.

    Anyone is free to copy, modify, publish, use, compile, sell, or
    distribute this software, either in source code form or as a compiled
    binary, for any purpose, commercial or non-commercial, and by any
    means.

    In jurisdictions that recognize copyright laws, the author or authors
    of this software dedicate any and all copyright interest in the
    software to the public domain. We make this dedication for the benefit
    of the public at large and to the detriment of our heirs and
    successors. We intend this dedication to be an overt act of
    relinquishment in perpetuity of all present and future rights to this
    software under copyright law.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
    OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
    ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.

    For more information, please refer to <http://unlicense.org/>
