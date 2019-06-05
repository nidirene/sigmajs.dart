A generated Dart API for [Chart.js](http://www.chartjs.org/)
using [pkg/js](https://pub.dartlang.org/packages/js) and
[dart_js_facade_gen](https://github.com/dart-lang/js_facade_gen).

This project will be *lightly* maintained by the original author.
Contributions are welcome.

To understand usage, see the
[example](https://github.com/nidirene/sigmajs.dart/tree/master/example)


## Running the tests
To run all of the tests in DartDevCompiler (DDC):
```
$ pub run build_runner test
```

To run all of the tests in Dart2JS:
```
$ pub run build_runner test -r
```

To run all of the tests in Dart2JS with spec-compliance mode:
```
$ pub run build_runner test -r -c spec
```
(This disables the --omit-implicit-checks flag)

## Disclaimer

This is not an official product.
