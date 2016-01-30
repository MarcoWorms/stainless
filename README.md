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

#### Notes

You may like to:

* Drop Ramda or Mori, since they provide almost the same functionality.
(remember: Ramda is faster, but Mori's immutable)
* Go for a more idiomatic route and use Immutable.js instead of Ramda and Mori.
(remember to drop non-idiomatic babel syntax plugins too)
* Not using Fast.js? drop it and do it the way you like.
* Or do like me and go with the standard package :)

It's all up to you.

## Instructions

Clone the repo and:

* __delete:__ PLUGIN.md, README.md and ./src/delete-me
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
* You're ready to go baby :)

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
