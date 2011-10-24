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

### Coverage

Code coverage can be tested with [JSCoverage](http://siliconforks.com/jscoverage/). Once you've got JSCoverage installed, there are two sh scripts that can help to analize the coverage:

#### jscoverage.sh

Example `./jscoverage.sh` or `./jscoverage Base DOM`.
This will generate a new folder in the `coverage` folder with a `jscoverage.html` file. If this file is accessed (through a (local)) server, it will analize the coverage. To instantly run the specs, browse to:

    http://localhost/coverage/Base/jscoverage.html?Specs/SpecRunner.html

In the *Summary* tab, you will see which lines are executed, and covered by the specs.

#### jscoverage-server.sh

Because some code is for specific browsers only, running the coverage in one browser is often not enough. With jscoverage-server it is possible to save te results for multiple browsers which are joined in one result.

    ./jscoverage-server.sh Base

This command will start a new server for the Base repository. Now you should the specs in multiple browsers and save the results. In most cases the URL that shoudl be opened is `http://127.0.0.1:8080/jscoverage.html?Specs/SpecRunner.html`.

When this is done, the results are saved in `coverage/Base-results` with a `jscoverage.html` file which can be vieuwed in a browser.


### Updating all repositories

To update each repository to the latest version, running the following command will update each submodule to it's latest version:

    ./update-repos.sh

Be careful if you have unpushed commits in the master branches, because it might overwrite them.

