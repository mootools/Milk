Milk.js
=======

Milk.js is the new super modular JavaScript framework and is a MooTools project.

Milk.js consist out of:

- *Base* - Base functionality, Array, Function, String, Number and Object methods, Class and other goodies
- *DOM* - A OOP based DOM API with Class as Element wrappers.
- *Slick* - Our super duper famous and precise selector engine.
- *Request* - Everything you requests. Especially a XHR wrapper, but also JSONP.
- *Fx* - Shiny Animations
- *JSON* - JSON decoding and encoding
- *Color* - Convert your HEX codes to rgb values, other transformations, a colorfull package.
- *Table* - Actually a Map, but can store values with non scalar keys.

Use the [issues](https://github.com/mootools/Milk/issues) for any Milk.js project
related issues. For package specific issues please create a new issue there.

AMD
---

All these cool packages will use [AMD](https://github.com/amdjs/amdjs-api/wiki/AMD), the new relatively and awesome module format.

If you're brave enough to test some features you will need a AMD loader like [require.js](http://requirejs.org/).


Testing
-------

Testing will be done with our test suite *Sprinter*. Soon, in the near future, each repository will have a `Spec` folder containing all the specs for that project. Sprinter uses [Jasmine](https://github.com/pivotal/jasmine/wiki) and (usually) Require.JS.